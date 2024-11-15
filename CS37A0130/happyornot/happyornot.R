library(lubridate)
library(cleaner)
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

rowCount <- 10000
rangeBegin <- as.Date("2024-01-01")
rangeEnd <- as.Date("2024-11-30")

dateArray <- rdate(rowCount,rangeBegin, rangeEnd)
dateArray <- sort(dateArray, decreasing = FALSE)

s <- 1:5

timeArray <- paste0(sprintf("%02d",(sample((8:16), rowCount, replace = TRUE))),":",
                    sprintf("%02d",(sample((0:59), rowCount, replace = TRUE))),":",
                    sprintf("%02d",(sample((0:59), rowCount, replace = TRUE))),".000Z")

siteArray <- sample(s, rowCount, replace = TRUE, prob = c(0.4,0.3,0.1,0.1,0.1))

b <- c(1.0,0.97,0.94,0.91,0.88,0.83,0.79,0.74,0.71,0.67)

battLevelArray <- sample(b, rowCount, replace = TRUE)
battLevelArray <- sort(battLevelArray, decreasing = TRUE)

x <- 1:5
feedbackArray <- sample(x, rowCount, replace = TRUE, prob = c(0.05,0.1,0.3,0.35,0.2))

feedback.raw <- data.frame(siteArray, dateArray, timeArray, feedbackArray, battLevelArray)
colnames(feedback.raw) <- c("SiteID","ObsDate","ObsTime","Feedback","BatteryLevel")

feedback.final <- feedback.raw %>% mutate(ObservedAt = paste(dateArray,timeArray,sep='T'))
feedback.final <- feedback.final %>% arrange(ymd_hms(ObservedAt))

feedback.today <- feedback.final %>% filter(ObsDate == "2024-11-14")

# testing distribution by plotting it
ggplot(data.frame(feedback.day1), aes(x=Feedback)) +
  geom_bar(fill="lightgreen")

# exporting json if needed
write_json(feedback.final, "./data/happyornot_2024.json")

#================================#
### POSTING TO IoT Ticket API ####
#=====================##=========#

Sys.getenv("UserAgent")
Sys.getenv("apiEventURI")
Sys.getenv("apiUser")

# Telemetry REST URI
# PUT https://<server_address>/http-adapter/telemetry/<iot-ticket-tenant-id>/<device_id_here>
# Event REST URI
# PUT https://<server_address>/http-adapter/event/<iot-ticket-tenant-id>/<device_id_here>

# Example:
# curl --request PUT --json '{"e": [{ "type": "Notification", "active": true, "severity":"High", "gn": "Collisions", "id":
# "<EVENT_ID>", "m": "Message Message", "ts":"' --json "$(date --iso-8601=seconds)" --json '"}]}' --user
# "<USERNAME>@<ORG>:<PASSWORD>" https://<SERVER_ADDRESS>/http-adapter/event/<ORG>/
# <DEVICE_ID>

apiResult <- PUT(url = Sys.getenv("apiTelemetryURI"),
                  authenticate(Sys.getenv("apiUser"),
                               Sys.getenv("apiPwd"),
                               type = "basic"),
                 encode = c("json")
                )

# verify success
status_code(apiResult)
