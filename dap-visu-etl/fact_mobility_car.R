library(dplyr)
library(lubridate)
library(eurostat)
library(RPostgreSQL)
library(odbc)


# luodaan faktataulu henkilöautojen käytöstä Eurostat -datan pohjalta
# datasetit

# EUROSTAT: 
# henkilöautot per 1000 ihmistä road_eqs_carhab

# faktataulussa DateKey toimii viiteavaimena kohteena vastaavan dimensiotaulun BusinessKey

carhab.df <- get_eurostat("road_eqs_carhab")

mobility.df <- carhab.df %>% rename(readabledate = time, country = geo)
mobility.final <- mobility.df %>% mutate(datekey = as.integer(readabledate))

# lisätään tiedot datakatalogiin
catalogEntry4 <- list("EUROSTAT","road_eqs_carhab","fact_mobility","Passenger cars per 1 000 inhabitants",as.Date(today()))

# INSERT INTO DW

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_mobility")

dbWriteTable(con, table_id, mobility.final, overwrite = TRUE)

dbDisconnect(con)
