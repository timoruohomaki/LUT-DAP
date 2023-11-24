library(dplyr)
library(lubridate)
library(eurostat)
library(RPostgreSQL)
library(odbc)

# luodaan faktataulu yritysten rekisteröinneistä ja konkursseista Eurostat -datan pohjalta
# datasetit

# EUROSTAT: 
# indeksi yritysten rekisteröinneistä ja konkursseista "sts_rb_q"
# organisaatioluokitus dim_nace_r2 -taulussa

# faktataulussa DateKey toimii viiteavaimena kohteena vastaavan dimensiotaulun BusinessKey

regrupc.df <- get_eurostat("sts_rb_q")

regupc.Clean1 <- regrupc.df %>% rename(readabledate = time, country = geo)

regupc.final <- regupc.Clean1 %>% mutate(datekey = as.integer(readabledate))

# lisätään tiedot datakatalogiin
catalogEntry8 <- list("EUROSTAT","sts_rb_q","fact_regbrupt",
                        "Business registration and bankruptcy index by NACE Rev.2 activity - quarterly data",as.Date(today()))

# INSERT INTO DW

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_regbrupt")

dbWriteTable(con, table_id, regupc.final, overwrite = TRUE)

dbDisconnect(con)
