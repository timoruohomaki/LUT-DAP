library(dplyr)
library(readxl)

dentalCodes.raw <- read_excel("./data/THLDentalCodes.xlsx")

dentalCodes.fi <- dentalCodes.raw %>% select(Id,`Long name`)
dentalCodes.en <- dentalCodes.raw %>% select(Id,Long_name)


# create key-value lists in Finnish and English


write.table(dentalCodes.fi, file = "./data/thlDentalCodesFi.csv", eol = "\r \n", col.names = TRUE, fileEncoding = "utf8")
write.table(dentalCodes.en, file = "./data/thlDentalCodesEn.csv", eol = "\r \n", col.names = TRUE, fileEncoding = "utf8")
