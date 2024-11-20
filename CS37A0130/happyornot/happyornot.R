library(dplyr)
library(ggplot2)
library(jsonlite)
library(httr)
library(dotenv)

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

s <- c(1000,1001,1002,1037,1526,1580,1621,1648,1713,1720)

timeArray <- paste0(sprintf("%02d",(sample((8:16), rowCount, replace = TRUE))),":",
                    sprintf("%02d",(sample((0:59), rowCount, replace = TRUE))),":",
                    sprintf("%02d",(sample((0:59), rowCount, replace = TRUE))),".000Z")

siteArray <- sample(s, rowCount, replace = TRUE, prob = c(0.2,0.2,0.1,0.05,0.1,0.05,0.1,0.05,0.1,0.05))

b <- c(1.0,0.97,0.94,0.91,0.88,0.83,0.79,0.74,0.71,0.67)

battLevelArray <- sample(b, rowCount, replace = TRUE)
battLevelArray <- sort(battLevelArray, decreasing = TRUE)

x <- 1:4
feedbackArray <- sample(x, rowCount, replace = TRUE, prob = c(0.1,0.3,0.35,0.25))

feedback.raw <- data.frame(siteArray, dateArray, timeArray, feedbackArray, battLevelArray)
colnames(feedback.raw) <- c("SiteID","ObsDate","ObsTime","Feedback","BatteryLevel")

feedback.final <- feedback.raw %>% mutate(ObservedAt = paste(dateArray,timeArray,sep='T'))
feedback.final <- feedback.final %>% arrange(ymd_hms(ObservedAt))

feedback.today <- feedback.final %>% filter(ObsDate == "2024-11-18")

#================================#
### POSTING TO IoT Ticket API ####
#=====================##=========#

Sys.getenv("UserAgent")
Sys.getenv("apiEventURI")
Sys.getenv("apiUser")

# create JSON structure for API call

feedback.feedback <- setNames(as.list(feedback.today$Feedback), feedback.today$ObservedAt)
feedback.battery <- setNames(as.list(feedback.today$BatteryLevel), feedback.today$ObservedAt)
feedback.sites <- setNames(as.list(feedback.today$SiteID), feedback.today$ObservedAt)

lelem1=list(n="Feedback", dt="double", unit="happiness", data = feedback.feedback)
lelem2=list(n="BatteryLevel", dt="double", unit="", data = feedback.battery)
lelem3=list(n="SiteID", dt="string", unit="", data = as.data.frame(feedback.sites))

# combine into a single object

ls=list(t=list(lelem1, lelem2, lelem3))

toiot.json <- toJSON(ls, auto_unbox = TRUE, pretty = TRUE, Date = c("ISO8601", "epoch")) %>% jsonlite::prettify()

toiot.json

# post JSON on IoT-Ticket

Sys.getenv("apiTelemetryURI")

apiResult <- PUT(url = Sys.getenv("apiTelemetryURI"),
                  authenticate(Sys.getenv("apiUser"),
                               Sys.getenv("apiPwd"),
                               type = "basic"),
                  body = toiot.json,
                  content_type_json(),
                 user_agent(Sys.getenv("UserAgent"))
                )

# verify success (IoT-Ticket returns 202 on successful put)
status_code(apiResult)

