library(dplyr)
library(lubridate)
library(eurostat)
library(RPostgreSQL)
library(odbc)


# luodaan faktataulu henkilöautojen käytöstä Eurostat -datan pohjalta
# datasetit

# EUROSTAT: 
# relaatio eri julkisten liikenteen kulkuneuvojen välillä (ilma, meri, maa) tran_hv_ms_psmod

# faktataulussa DateKey toimii viiteavaimena kohteena vastaavan dimensiotaulun BusinessKey

psmod.df <- get_eurostat("tran_hv_ms_psmod")

pubmod.df <- psmod.df %>% rename(readabledate = time, country = geo)
pubmod.final <- pubmod.df %>% mutate(datekey = as.integer(readabledate))

# lisätään tiedot datakatalogiin
catalogEntry5 <- list("EUROSTAT","tran_hv_ms_psmod","fact_mobility_public","Modal split of air, sea and inland passenger transport",as.Date(today()))

# INSERT INTO DW

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_mobility_public")

dbWriteTable(con, table_id, pubmod.final, overwrite = TRUE)

dbDisconnect(con)