library(dplyr)
library(readxl)
library(digest)
library(stringi)
library(RPostgreSQL)
library(odbc)
library(jsonlite)

if(!file.exists("./data")){dir.create("./data")}

kCount <- 1000000

# create names

firstNameData <- read_excel("./data/etunimitilasto-2023-08-01-dvv.xlsx")

lastNameData <- read_excel("./data/sukunimitilasto-2023-08-01-dvv.xlsx")

firstName <- sample(unlist(as.list(firstNameData[1])), kCount, replace = TRUE)

lastName <- sample(unlist(as.list(lastNameData[1])), kCount, replace = TRUE)

rm(firstNameData, lastNameData)

# create addresses

addressData <- read.csv("./data/Finland_addresses_2023-11-13.csv")

addresses <- addressData %>% filter(street != "") %>% filter(postal_code >= 33100, postal_code < 40000)

ptoWidth <- c(5,8,5,30,30,12,12,8,1)

ptoData.df <- read.fwf("./data/PCF_20231207.dat", ptoWidth, header = FALSE, fileEncoding = "latin1")

colnames(ptoData.df) <- c("TIETUETUNNUS","AJOPVM","POSTINRO","PTONIMI_FI","PTONIMI_SE","PTOLYH_FI", "PTOLYH_SE","VTULOPVM","TYYPPI")

addresses.df <- merge(addresses, ptoData.df, by.x = "postal_code", by.y = "POSTINRO")

addresses.df <- addresses.df[sample(nrow(addresses.df), kCount, replace = TRUE), ]

# business attributes

primarySite <- sample(c(100, 101, 102), size = kCount, replace = TRUE, prob = c(0.6, 0.2, 0.2))

allergies <- sample(c("","latex","dental alloys","polymers","acrulates"), size = kCount, replace = TRUE, prob = c(0.9,0.07,0.01,0.01,0.01))

# phone numbers

primaryPhone <- paste0(sample(c("040","041","045","050"), size = 
                                  kCount, replace = TRUE, prob = c(0.4,0.1,0.2,0.3)),
                       "-",
                       sample((1000000:99999999), size = kCount, replace = TRUE))

# social security number

personID <- paste0(sprintf("%02d",(sample((1:31), size = kCount,
                   replace = TRUE))), sprintf("%02d",(sample((1:12), size = kCount,
                   replace = TRUE))), sample((20:99), size = kCount, replace = TRUE),
                   "-", sample((100:999), size = kCount, replace = TRUE),
                   sample(LETTERS, size = kCount, replace = TRUE))

# create customer data set and check for duplicates

customerData.df <- data.frame(firstName,lastName,addresses.df$street,addresses.df$house_number,addresses.df$postal_code,addresses.df$PTONIMI_FI,primaryPhone, primarySite,allergies,personID)

ncount <- data.frame(table(customerData.df$personID))
count(ncount[ncount$Freq > 1,])

customerData.deduplicated <- customerData.df %>% distinct(personID, .keep_all = TRUE)

# dataset manipulations

customerData.clean1 <- customerData.deduplicated %>% mutate(streetAddress = paste(addresses.df.street,addresses.df.house_number))

customerData.clean2 <- customerData.clean1 %>% rowwise(personID) %>% mutate(personGUID = digest(personID, algo = 'sha256'))

customerData.email <- customerData.clean2 %>% rowwise() %>% mutate(personalEmail = paste0(tolower(substr(firstName,1,1)),
                                                                                          tolower(substr(lastName,1,7)),
                                                                                          "@", sample(c("mock.gmail.com","mock.hotmail.com","mock.yahoo.com","mock.helsinki.fi","mock.tuni.fi","mock.lut.fi","mock.luukku.com"),
                                                                                          size = 1, replace = TRUE))) %>% mutate(personalEmail = stri_trans_general(personalEmail,"latin-ascii"))

customerData.final <- customerData.email %>% select(firstName, lastName, streetAddress, postalCode = addresses.df.postal_code, postalName = addresses.df.PTONIMI_FI, primaryPhone, personalEmail, primarySite, allergies, personID, personGUID)

# create alternate set with privacy option (SSID excluded, second dataset created)

customerData.safe <- customerData.final %>% select(firstName,lastName,streetAddress,postalCode,postalName,
                                                   primaryPhone,personalEmail, primarySite, personGUID)

customerData.private <- customerData.final %>% select(personID,personGUID)


# saving into Postgre

con <- DBI::dbConnect(odbc::odbc(), "ehr-db01")
s1 = ("SET application_name = 'RStudio - 2023.06.1 Build 524';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "patients")

dbWriteTable(con, table_id, customerData.final, overwrite = TRUE)

dbDisconnect(con)

# save as CSV

#write.table(customerData.final, file = "./data/customerData.csv", eol = "\r \n", col.names = TRUE, fileEncoding = "utf8")
write.table(customerData.safe, file = "./data/customerDataSafe.csv", eol = "\r \n", col.names = TRUE, fileEncoding = "utf8")
write.table(customerData.private, file = "./data/customerDataPrivate.csv", eol = "\r \n", col.names = TRUE, fileEncoding = "utf8")

# save as JSON

jsonData <- toJSON(customerData.final, pretty = TRUE)

write(jsonData, file = "./data/customerData.json")

