install.packages("ecb")

library(ecb)
library(dplyr)
library(lubridate)
library(RPostgreSQL)
library(odbc)

apause <- function(x)
{
        p1 <- proc.time()
        Sys.sleep(x)
        proc.time() - p1
}

# luetaan aikasarjat Euroopan Keskuspankin tilastorajapinnasta
# Info: https://data.ecb.europa.eu/help/api/overview
# https://cran.r-project.org/web/packages/ecb/ecb.pdf

# Dataset: Long-term interest rate for convergence purposes - 10 years maturity - EU27
# Info: https://data.ecb.europa.eu/data/datasets/IRS/IRS.M.V5.L.L40.CI.0000.Z01.N.Z

# kaikki hakuavaimet maittain

ecbKeys <- ("IRS.M.U2.L.L40.CI.0000.EUR.N.Z")
ecbRegion <- c("EU27")
ecbFilter <- list(startPeriod = "2000-W01")

# nouda EU27

ecbData.Raw <- get_data(ecbKeys, ecbFilter)

ecbData.Clean1 <- ecbData.Raw %>% mutate(date_key = as.integer(date(paste0(obstime,"-01")))) %>% 
        mutate(datasource = "ecb", region = ecbRegion[1], dataset = ecbKeys)

ecbData.Clean2 <- ecbData.Clean1 %>% select(datasource,dataset,obsvalue,date_key)

ecbData <- ecbData.Clean2

rm(ecbData.Raw,ecbData.Clean1,ecbData.Clean2)


# lisätään tiedot datakatalogiin
catalogEntry11 <- list("ECB","IRS.M.U2.L.L40.CI.0000.EUR.N.Z","fact_ecb",
                       "Monthly long-term interest rate for convergence purposes - 10 years maturity, denominated in Euro, Euro area",as.Date(today()))

# ====== INSERT INTO DATABASE =======

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_ecb")

dbWriteTable(con, table_id, ecbData, overwrite = TRUE)

dbDisconnect(con)