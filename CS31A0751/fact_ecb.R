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

# Dataset 1: Long-term interest rate for convergence purposes - 10 years maturity - EU27
# Info: https://data.ecb.europa.eu/data/datasets/IRS/IRS.M.V5.L.L40.CI.0000.Z01.N.Z

# Dataset 2: Gross disposable income of households
# Info: https://data.ecb.europa.eu/data/datasets/QSA/QSA.Q.N.I8.W0.S1M.S1._Z.B.B6G._Z._Z._Z.XDC._T.S.V.N._T

# kaikki hakuavaimet maittain

ecbKeys <- ("IRS.M.U2.L.L40.CI.0000.EUR.N.Z", "QSA.Q.N.I8.W0.S1M.S1._Z.B.B6G._Z._Z._Z.XDC._T.S.V.N._T")
# tässä vain EU19 maat, joten voisiko vaihtaa tämän vain EU:ksi, kun on nähtävästi vain "region"-avain
#ecbRegion <- c("EU")
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
  
catalogEntry12 <- list("ECB","QSA.Q.N.I8.W0.S1M.S1._Z.B.B6G._Z._Z._Z.XDC._T.S.V.N._T","fact_ecb",
                       "Gross disposable income of households",as.Date(today()))

# ====== INSERT INTO DATABASE =======

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_ecb")

dbWriteTable(con, table_id, ecbData, overwrite = TRUE)

dbDisconnect(con)
