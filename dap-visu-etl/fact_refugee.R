library(dplyr)
library(lubridate)
library(eurostat)
library(RPostgreSQL)
library(odbc)

# luodaan faktataulu Ukrainan pakolaistilanteesta Euroopassa
# datasetit

# EUROSTAT: 
# migr_asytpsm Beneficiaries of temporary protection at the end of the month by citizenship, age and sex – monthly data

asytpsm.df <- get_eurostat("migr_asytpsm")

# faktataulussa DateKey toimii viiteavaimena kohteena vastaavan dimensiotaulun BusinessKey

asytpsm.df <- asytpsm.df %>% mutate(DateKey = as.integer(time))

asytpsm.df$datasetid <- ("migr_asytpsm")

# poistetaan muut kuin EU -alueen pakolaiset
refugees.eu <- asytpsm.df %>% dplyr::filter(geo %in% euroCountries$Alpha2Code)

refugees.eu <- refugees.eu %>% rename(country = geo, readabledate = time)
        
# lisätään tiedot datakatalogiin
catalogEntry1 <- list("EUROSTAT","migr_asytpsm","fact_refugee","Beneficiaries of temporary protection at the end of the month by citizenship, age and sex – monthly data",as.Date(today()))
# catalogEntry2 <- list("EUROSTAT","migr_asytpfm","fact_refugee","Decisions granting temporary protection by citizenship, age and sex – monthly data",today())

# INSERT INTO DW

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_refugee")

dbWriteTable(con, table_id, refugees.eu, overwrite = TRUE)

dbDisconnect(con)
