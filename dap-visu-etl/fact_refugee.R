library(dplyr)
library(lubridate)
library(eurostat)
library(RPostgreSQL)
library(odbc)


# luodaan faktataulu Ukrainan pakolaistilanteesta Euroopassa
# datasetit

# EUROSTAT: 
# migr_asytpsm Beneficiaries of temporary protection at the end of the month by citizenship, age and sex – monthly data

# migr_asytpfm Decisions granting temporary protection by citizenship, age and sex – monthly data

refugees.df <- as.data.frame(seq(as.Date("2020-1-1"), as.Date("2024-12-31"), by = "day"))

colnames(refugees.df) <- c("ReadableDate")

# faktataulussa DateKey toimii viiteavaimena kohteena vastaavan dimensiotaulun BusinessKey

refugees.df <- refugees.df %>% mutate(DateKey = as.integer(ReadableDate))
refugees.df$datasetid <- ("migr_asytpfm")

asytpsm.df <- get_eurostat("migr_asytpsm")

asytpfm.df <- get_eurostat("migr_asytpfm")

refugees.all <- merge(refugees.df, asytpsm.df[,c("unit","citizen","sex","age","geo","time","values")], 
                      by.x = c("ReadableDate"), by.y = c("time"))

refugees.eu <- refugees.all %>% dplyr::filter(geo %in% euroCountries$Alpha2Code)

refugees.eu <- refugees.eu %>% rename(country = geo)
        
# lisätään tiedot datakatalogiin
catalogEntry1 <- list("EUROSTAT","migr_asytpsm","fact_refugee","Beneficiaries of temporary protection at the end of the month by citizenship, age and sex – monthly data",as.Date(today()))
catalogEntry2 <- list("EUROSTAT","migr_asytpfm","fact_refugee","Decisions granting temporary protection by citizenship, age and sex – monthly data",today())

# INSERT INTO DW

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_refugee")

dbWriteTable(con, table_id, refugees.eu, overwrite = TRUE)

dbDisconnect(con)