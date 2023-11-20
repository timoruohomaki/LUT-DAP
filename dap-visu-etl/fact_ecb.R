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

ecbKeys <- c("IRS.M.V5.L.L40.CI.0000.Z01.N.Z","IRS.M.PL.L.L40.CI.0000.PLN.N.Z","IRS.M.RO.L.L40.CI.0000.RON.N.Z",
             "IRS.M.SE.L.L40.CI.0000.SEK.N.Z","IRS.M.BG.L.L40.CI.0000.BGN.N.Z","IRS.M.CZ.L.L40.CI.0000.CZK.N.Z",
             "IRS.M.DK.L.L40.CI.0000.DKK.N.Z","IRS.M.HU.L.L40.CI.0000.HUF.N.Z","IRS.M.GB.L.L40.CI.0000.GBP.N.Z")
ecbRegion <- c("EU27","PLN","RON","SEK","BGN","CZK","DKK","HUF","HRK","BGN","EEK","GBP","CZK","")
ecbFilter <- list(startPeriod = "2000-W01")

# testikutsu, hakee ecbKeys viimeisimmän tunnisteen:
ecbTest <- get_data(last(ecbKeys),ecbFilter)

# nouda EU27

ecbData.Raw <- get_data(ecbKeys[1], ecbFilter)
ecbData.Clean1 <- ecbData.Raw %>% mutate(date_key = as.integer(date(paste0(obstime,"-01")))) %>% 
        mutate(datasource = "ecb", region = ecbRegion[1], dataset = ecbKeys[1])
ecbData.Clean2 <- ecbData.Clean1 %>% select(datasource,dataset,obsvalue,date_key)
ecbData <- ecbData.Clean2

rm(ecbData.Raw,ecbData.Clean1,ecbData.Clean2)

# nouda jäsenvaltiot ja yhdistä ecbData -frameen

for(i in 2:length(ecbKeys)) {
        
        print(paste("Fetching",ecbRegion[i]))
        
        ecbData.Raw <- get_data(ecbKeys[i], ecbFilter)
        
        ecbData.Clean1 <- ecbData.Raw %>% mutate(date_key = as.integer(date(paste0(obstime,"-01")))) %>% 
                mutate(datasource = "ecb", region = ecbRegion[i], dataset = ecbKeys[i])
        ecbData.Clean2 <- ecbData.Clean1 %>% select(datasource,dataset,obsvalue,date_key)
        
        ecbData <- (ecbData, ecbData.Clean2)
        
        rm(ecbData.Raw,ecbData.Clean1,ecbData.Clean2)
        
        apause(1)
        
}

# ====== INSERT INTO DATABASE =======

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_ecb")

dbWriteTable(con, table_id, ecbData, overwrite = TRUE)

dbDisconnect(con)