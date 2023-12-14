library(dplyr)
library(readxl)

# lähde: https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml 

dentalCodes.raw <- read_excel("./data/THLDentalCodes.xlsx")

dentalCodes.fi <- dentalCodes.raw %>% select(Id,`Long name`)

colnames(dentalCodes.fi) <- c("ID", "VALUE") 

dentalCodes.import <- dentalCodes.fi %>% mutate(keyvalue = paste0("SET ", ID," '", VALUE, "'")) %>% select(keyvalue)

write.table(dentalCodes.import, file = "./data/dentalCodes.csv", sep = ";", eol = "\n", row.names = FALSE, col.names = FALSE, quote = FALSE, fileEncoding = "utf8")

dentalCodes.en <- dentalCodes.raw %>% select(Id,Long_name)


