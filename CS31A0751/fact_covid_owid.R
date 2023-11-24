library(dplyr)
library(tidyr)
library(tidyverse)
library(fs)
library(RPostgreSQL)
library(odbc)
library(lubridate)

covidOWID.raw <- read_csv("D:/git/COVID-19/owid/owid-covid-data.csv")

# valitaan vain euromaat
covidOWID.clean1 <- covidOWID.raw %>% dplyr::filter(iso_code %in% euroCountries$Alpha3Code)

# lisätään datasetti katalogiin

catalogEntry3 <- list("OWID","OWID","fact_covid_OWID","The complete Our World in Data COVID-19 dataset",today())

# ladataan taulu tietokantaan

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_covid_OWID")

dbWriteTable(con, table_id, covidOWID.clean1, overwrite = TRUE)

dbDisconnect(con)
