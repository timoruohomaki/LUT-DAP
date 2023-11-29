library(RPostgreSQL)
library(odbc)
library(dplyr)
library(tidyr)

# luodaan erillinen taulu jossa faktataulujen metatiedot, lähteet ja selitteet
# jokainen datasetti fakta- tai dimensiotaulun luonnissa kirjaa metadatansa catalogEntryXX -listaan

entryPattern <- grep("catalogEntry", names(.GlobalEnv),value=TRUE)
entryList <- do.call("list", mget(entryPattern))

catalog.df <- as.data.frame(do.call(rbind,entryList))

colnames(catalog.df) <- c("source","datasetid","table","description","lastupdate")

catalog.final <- unnest(catalog.df, cols = c("source","datasetid","table","description","lastupdate"))

rm(entryList,entryPattern, catalog.df)

# INSERT INTO DW

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1 Build 524';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "datacatalog")

dbWriteTable(con, table_id, catalog.final, overwrite = TRUE)

dbDisconnect(con)
