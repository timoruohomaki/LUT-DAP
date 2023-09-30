# tuodaan 01-01-2021.csv - 31-12-2022.csv ja yhdistetään

library(dplyr)
library(tidyverse)
library(stringr)
library(fs)
library(RPostgreSQL)
library(odbc)

if(!file.exists("./data")){dir.create("./data")}

filePaths <- fs::dir_ls(r"(D:\git\COVID-19\csse_covid_19_data\csse_covid_19_daily_reports\)")

# poista readme.md joka on (toivottavasti) viimeinen listalla

filePaths <- head(filePaths, -1)

fileData <- list()

for (i in seq_along(filePaths)) {
        fileData[[i]] <- read_csv(
                file = filePaths[[i]]
        )
        fileData[[i]]$phenomenon_time <- str_sub(filePaths[1],-14,-5)
}

fileData <- set_names(fileData, filePaths)

sample <- fileData[[1]]

# luodaan tietokantayhteys käyttäen Aivenin palvelua paikallisella ODBC -määrityksellä
# https://ftp.postgresql.org/pub/odbc/versions/msi/psqlodbc_16_00_0000-x64.zip 
# ohjeet: https://www.sqlshack.com/configure-odbc-drivers-for-postgresql/

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")

dbListTables(con, schema = "landing")

sqlSave