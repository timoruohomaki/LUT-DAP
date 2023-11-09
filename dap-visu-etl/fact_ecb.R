install.packages("ecb")
library(ecb)

# luetaan aikasarjat Euroopan Keskuspankin tilastorajapinnasta
# Info: https://data.ecb.europa.eu/help/api/overview
# https://cran.r-project.org/web/packages/ecb/ecb.pdf

ecbKey <- ("ICP.M.U2.N.000000.4.ANR")
ecbFilter <- list(startPeriod = "1995-W01")

hicp<-get_data(ecbKey, ecbFilter)

head(hicp)
