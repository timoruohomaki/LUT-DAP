library(dplyr)
library(RPostgreSQL)
library(odbc)

# lähde:
# https://ec.europa.eu/eurostat/databrowser/view/tran_hv_ms_psmod/default/table?lang=en


c1 <- c("TRN","Trains","Juna")
c2 <- c("CAR","Passenger cars","Henkilöautot")
c3 <- c("BUS_TOT","Motor coaches,buses and trolley buses","Bussit ja johdinautot")
c4 <- c("SEAV","Seagoing vessels","Vesikulkuneuvot")
c5 <- c("AC","Aircraft","Ilma-alukset")

vehicles <- as.data.frame(rbind(c1,c2,c3,c4,c5))

colnames(vehicles) <- c("code", "labelEN", "labelFI")

rm(c1,c2,c3,c4,c5)

# lisätään tiedot datakatalogiin
catalogEntry6 <- list("EUROSTAT","taxonomy","dim_vehicle_type","Vehicle types used in Eurostat modal split",as.Date(today()))

# POPULATE TABLES

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "dim_vehicle_type")

dbWriteTable(con, table_id, vehicles, overwrite = TRUE)

dbDisconnect(con)