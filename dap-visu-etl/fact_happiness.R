library(RPostgreSQL)
library(odbc)
library(lubridate)
library(dplyr)
library(readxl)

# luetaan xlsx -tiedostot import -kansiosta

dataFile <- "./import/happiness/DataForFigure2.1WHR2023.xls"

happiness.figure <- read_excel(dataFile, col_names = TRUE, col_types = "text")

dataFile <- "./import/happiness/DataForTable2.1WHR2023.xls"

happiness.table <- read_excel(dataFile, col_names = TRUE, col_types = "text")

happiness <- happiness.figure %>%  left_join(happiness.table, c("Country name" = "Country name") )

rm(happiness.figure, happiness.table)

# korjataan välilyönnit pois sarakenimistä

happiness.clean1 <- happiness
colnames(happiness.clean1) <- gsub(" ", "", colnames(happiness.clean1))

# suodatetaan pois muut kuin euromaat

happiness.clean2 <- happiness.clean1 %>% dplyr::filter(Countryname %in% euroCountries$CountryNameEN)

# lisätään uusi maakoodisarake

euro <- euroCountries %>% select(CountryNameEN, Alpha2Code)

happiness.clean3 <- happiness.clean2 %>% left_join(euro, c("Countryname" = "CountryNameEN"))

# ladataan taulu tietokantaan

# ====== INSERT DATABASE =======

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_happiness")

dbWriteTable(con, table_id, happiness.clean3, overwrite = TRUE)

dbDisconnect(con)
