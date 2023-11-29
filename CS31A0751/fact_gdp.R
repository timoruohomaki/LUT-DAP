library(dplyr)
library(lubridate)
library(eurostat)
library(RPostgreSQL)
library(odbc)

# luodaan faktataulu kuukausittaisesta työttömyydestä Eurostat -datan pohjalta

# faktataulussa DateKey toimii viiteavaimena kohteena vastaavan dimensiotaulun BusinessKey

persgdp.df <- get_eurostat("nama_10_gdp")

persgdp.clean1 <- persgdp.df %>% rename(readabledate = time, country = geo)
persgdp.final <- persgdp.clean1 %>% mutate(datekey = as.integer(readabledate))

# lisätään tiedot datakatalogiin

catalogEntry12 <- list("EUROSTAT","nama_10_gdp","fact_gdp","GDP and main components (output, expenditure and income)",as.Date(today()))

# INSERT INTO DW

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_gdp")

dbWriteTable(con, table_id, persgdp.final, overwrite = TRUE)

dbDisconnect(con)
