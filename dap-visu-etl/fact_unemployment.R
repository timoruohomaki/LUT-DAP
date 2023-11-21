library(dplyr)
library(lubridate)
library(eurostat)
library(RPostgreSQL)
library(odbc)

# luodaan faktataulu kuukausittaisesta työttömyydestä Eurostat -datan pohjalta
# datasetit

# EUROSTAT: 
# Unemployment rate (%) - monthly data "ei_lmhr_m"

# faktataulussa DateKey toimii viiteavaimena kohteena vastaavan dimensiotaulun BusinessKey

unempl.df <- get_eurostat("ei_lmhr_m")

unempl.clean1 <- unempl.df %>% rename(readabledate = time, country = geo)
unempl.final <- unempl.clean1 %>% mutate(datekey = as.integer(readabledate))

# lisätään tiedot datakatalogiin

catalogEntry10 <- list("EUROSTAT","ei_lmhr_m","fact_unemployment","Unemployment rate (%) - monthly data",as.Date(today()))

# INSERT INTO DW

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_unemployment")

dbWriteTable(con, table_id, index.final, overwrite = TRUE)

dbDisconnect(con)
