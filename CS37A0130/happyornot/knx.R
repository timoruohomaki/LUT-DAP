library(dplyr)
library(cleaner)
library(lubridate)
library(ggplot2)
library(jsonlite)
library(httr)
library(dotenv)

# generates random events that mimic room presence indicators

# workaround for dotenv issue https://github.com/gaborcsardi/dotenv/issues/15
# this needs to be run after every update of .env
detach("package:dotenv", unload=TRUE)
library(dotenv)

if(!file.exists("./data")){dir.create("./data")}

rowCount <- 50000
rangeBegin <- as.Date("2024-01-01")
rangeEnd <- as.Date("2024-11-30")

dateArray <- rdate(rowCount,rangeBegin, rangeEnd)
dateArray <- sort(dateArray, decreasing = FALSE)

r <- c("R100","R102","R103","R104","R201","R204","R208","R209","R210","R301")

x <- 0:1
timeArray <- paste0(sprintf("%02d",(sample((8:11), rowCount, replace = TRUE))),":",
                    sprintf("%02d",(sample((0:59), rowCount, replace = TRUE))),":",
                    sprintf("%02d",(sample((0:59), rowCount, replace = TRUE))),".000Z")

roomArray <- sample(r, rowCount, replace = TRUE, prob = c(0.2,0.2,0.1,0.05,0.1,0.05,0.1,0.05,0.1,0.05))

# TODO: Calculate daily duration as percentage of full day

presence.raw <- data.frame(roomArray, dateArray, timeArray)
colnames(presence.raw) <- c("RoomID","ObsDate","ObsTime")

presence.final <- presence.raw %>% mutate(ObservedAt = paste(dateArray,timeArray,sep='T'))
presence.final <- presence.final %>% arrange(ymd_hms(ObservedAt))

presence.today <- presence.final %>% filter(ObsDate == "2024-11-26")

Sys.getenv("UserAgent")
Sys.getenv("apiKNXuri")
Sys.getenv("apiUser")

### CREATE JSON OBJECTS ####

getPresenceData <- function() {
  
  keys <- as.vector(presence.today$ObservedAt)
  values <- as.vector(presence.today$RoomID)
  
  dataAsList <- list()
  
  for(i in 1:length(keys)) {
    dataRow <- list()
    dataRow[keys[i]] <- values[i]
    dataAsList[[i]] <- dataRow
  }
  
  return(dataAsList)
  
}

getObject <- function() {
  
  jsonList <- list()
  
  roomList <- (list(n = "RoomID", dt = "string", unit = " ", data=getPresenceData()))
  
  jsonList <- list(roomList)
  
  return(jsonList)
  
}

toiot.json <- toJSON(list(t=getObject()), auto_unbox = TRUE) %>% jsonlite::prettify()

write(toiot.json, file = "./data/knxtoiot_24112026.json")

#### POST TO IOT-TICKET ####

apiResult <- PUT(url = Sys.getenv("apiKNXuri"),
                 authenticate(Sys.getenv("apiKNXuser"),
                              Sys.getenv("apiKNXpwd"),
                              type = "basic"),
                 body = toiot.json,
                 content_type_json(),
                 user_agent(Sys.getenv("UserAgent"))
)

# verify success (IoT-Ticket returns 202 on successful put)
status_code(apiResult)
