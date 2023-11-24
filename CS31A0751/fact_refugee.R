library(dplyr)
library(lubridate)
library(eurostat)
library(RPostgreSQL)
library(odbc)

# luodaan faktataulu Ukrainan pakolaistilanteesta Euroopassa
# datasetit

# EUROSTAT: 
# migr_asytpfa Decisions granting temporary protection by citizenship, age and sex

asytpsm.df <- get_eurostat("migr_asytpfa")

# faktataulussa DateKey toimii viiteavaimena kohteena vastaavan dimensiotaulun BusinessKey

asytpsm.df <- asytpsm.df %>% mutate(DateKey = as.integer(time))

asytpsm.df$datasetid <- ("migr_asytpsm")

asytpsm.Clean1 <- asytpsm.df %>% filter(sex == "T", citizen == "UA")

# lisätään tiedot datakatalogiin
catalogEntry1 <- list("EUROSTAT","migr_asytpfa","fact_refugee","Decisions granting temporary protection by citizenship, age and sex",as.Date(today()))

# INSERT INTO DW

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_refugee")

dbWriteTable(con, table_id, asytpsm.Clean1, overwrite = TRUE)

dbDisconnect(con)
