install.packages("ecb")
library(ecb)
library(dplyr)
library(lubridate)
library(RPostgreSQL)
library(odbc)

# luetaan aikasarjat Euroopan Keskuspankin tilastorajapinnasta
# Info: https://data.ecb.europa.eu/help/api/overview
# https://cran.r-project.org/web/packages/ecb/ecb.pdf

# Dataset: Long-term interest rate for convergence purposes - 10 years maturity - EU27
# Info: https://data.ecb.europa.eu/data/datasets/IRS/IRS.M.V5.L.L40.CI.0000.Z01.N.Z

ecbKey <- ("IRS.M.V5.L.L40.CI.0000.Z01.N.Z")
ecbFilter <- list(startPeriod = "1995-W01")

ecbData <- get_data(ecbKey, ecbFilter)

head(ecbData)

# luodaan ehjä DateKey -päiväyssarake ja lisätään sarakkeet datalähteelle ja datasetin tunnisteelle

ecbData.Clean1 <- ecbData %>% mutate(date_key = as.integer(date(paste0(obstime,"-01")))) %>% 
        mutate(datasource = "ecb") %>% mutate(dataset = "IRS.M.V5.L.L40.CI.0000.Z01.N.Z")

# poistetaan turhat sarakkeet

ecbData.Clean2 <- ecbData.Clean1 %>% select(datasource,dataset,obsvalue,date_key)

# ====== INSERT INTO DATABASE =======

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_ecb")

dbWriteTable(con, table_id, ecbData.Clean2, overwrite = TRUE)

dbDisconnect(con)