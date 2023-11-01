# Suomen Pankin avoin data
# https://portal.boffsaopendata.fi/apis 

# talletusten ja lainojen korot aikasarja
# https://www.suomenpankki.fi/fi/Tilastot/rahalaitosten-tase-lainat-ja-talletukset-ja-korot/taulukot/rati-taulukot-fi/talletusten_ja_lainojen_korot_fi/

library(RPostgreSQL)
library(odbc)
library(lubridate)

apause <- function(x)
{
        p1 <- proc.time()
        Sys.sleep(x)
        proc.time() - p1
}

# noudetaan aineistot csv -muodossa ja tuodaan dataframeen

bofRates <- read.csv("./import/bof-korot/talletusten_ja_lainojen_korot_fi.csv")

head(bofRates)

bofRates[8]




con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")

# for debugging purposes

dbListTables(con, schema = "staging")
dbListFields(con, schema = "staging", "bof-rates")


rs <- dbSendQuery(con, schema = "staging", paste0("INSERT INTO staging.bof-rates",
                                                  " (\"phenomenon_time\",",
                                                  " \"country_region\")",
                                                  " VALUES (\"",
                                                  fileData[1]$`01-01-2021`$PhenomenonTime[1],
                                                  "\",\"",
                                                  fileData[1]$`01-01-2021`$Country_Region[1],
                                                  "\")"))

paste("Inserted", dbGetRowsAffected(rs) ,"rows.")