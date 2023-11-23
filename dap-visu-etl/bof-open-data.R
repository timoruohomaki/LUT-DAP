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

# TO DO
