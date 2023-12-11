library(dplyr)
library(readxl)
library(redux)

# lähde: https://koodistopalvelu.kanta.fi/codeserver/pages/classification-view-page.xhtml 

dentalCodes.raw <- read_excel("./data/THLDentalCodes.xlsx")

dentalCodes.fi <- dentalCodes.raw %>% select(Id,`Long name`)

colnames(dentalCodes.fi) <- c("ID", "VALUE") 

dentalCodes.import <- dentalCodes.fi %>% mutate(keyvalue = paste0("SET ", ID," '", VALUE, "'")) %>% select(keyvalue)

write.table(dentalCodes.import, file = "./data/dentalCodes.csv", sep = ";", eol = "\n", row.names = FALSE, col.names = FALSE, quote = FALSE, fileEncoding = "utf8")

dentalCodes.en <- dentalCodes.raw %>% select(Id,Long_name)

# setting redis connection config

redis_config(host = "redis-12727.c327.europe-west1-2.gce.redns.redis-cloud.com",
             password = "4gWf01bPnabshmC5MtHFmfYRNDdOGUg3",port = "12727",
             db = "codeServer", timeout = 30)

r <- redux::hiredis()

redis <- redux::redis

r$pipeline(
    redis$PING(),
    redis$PING())
