library(lubridate)
library(cleaner)
library(dplyr)
library(ggplot2)
library(jsonlite)
library(httr2)
library(dotenv)
library(AzureAuth)
library(AzureStor)
library(httpuv)

# workaround for dotenv issue https://github.com/gaborcsardi/dotenv/issues/15
# this needs to be run after every update of .env
detach("package:dotenv", unload=TRUE)
library(dotenv)

if(!file.exists("./data")){dir.create("./data")}


rowCount <- 10000
rangeBegin <- as.Date("2024-01-01")
rangeEnd <- as.Date("2024-11-23")

dateArray <- rdate(rowCount,rangeBegin, rangeEnd)
dateArray <- sort(dateArray, decreasing = FALSE)

s <- 1:5

timeArray <- paste0(sprintf("%02d",(sample((8:16), rowCount, replace = TRUE))),":",
                    sprintf("%02d",(sample((0:59), rowCount, replace = TRUE))),":",
                    sprintf("%02d",(sample((0:59), rowCount, replace = TRUE))))

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

# feedback.final <- feedback.raw %>% arrange(ObservedAt)
feedback.final$Feedback <- as.factor(feedback.final$Feedback)
feedback.final$SiteID <- as.factor(feedback.final$SiteID)

feedback.final <- feedback.final %>% select(SiteID,Feedback,BatteryLevel,ObservedAt)

# testing distribution by plotting it
ggplot(data.frame(feedback.final), aes(x=Feedback)) +
  geom_bar(fill="lightgreen")

head(feedback.final)
tail(feedback.final)

# exporting json

write_json(feedback.final, "./data/happyornot_2024.json")

#===========================#
### AZURE EVENT HUB CODE ####
#===========================#

# posting to Azure event hub
Sys.getenv("EventHubPolicyName")
Sys.getenv("EventHubUrlString")
Sys.getenv("EventHubAPIVersion")
Sys.getenv("EventHubOperations")
Sys.getenv("UserAgent")
