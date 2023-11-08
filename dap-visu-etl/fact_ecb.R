library(httr)
library(jsonlite)
library(stringr)
library(utils)

# luetaan aikasarjat Euroopan Keskuspankin tilastorajapinnasta
# Info: https://data.ecb.europa.eu/help/api/overview
# SDMX info: https://sdmx.org/

# esimerkki https://data-api.ecb.europa.eu/service/data/EXR/M.USD.EUR.SP00.A

ecbUrlPart1 <- str_trim("https://data-api.ecb.europa.eu/service/data/")
ecbUrlPart2 <- str_trim("EXR/")
ecbUrlPart3 <- str_trim("M.USD.EUR.SP00.A")
ecbUrlParams <- str_trim("?startPeriod=1995-01-01T00%3A00%3A00%2B00%3A00")

ecbUrl <- paste0(ecbUrlPart1,ecbUrlPart2,ecbUrlPart3,ecbUrlParams)

# tämä toimii vain Windowsissa
writeClipboard(ecbUrl, format = 13)

ecbData <- GET(ecbUrl)

# authenticate("api-key-goes-here",""))

print(paste("CALLING: ", ecbUrl))
print(paste("HTTP STATUS:", http_status(ecbData)))


