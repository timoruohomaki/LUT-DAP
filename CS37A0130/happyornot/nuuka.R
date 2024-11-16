library(jsonlite)
library(httr)
library(dotenv)
library(dplyr)
library(tidyr)

# workaround for dotenv issue https://github.com/gaborcsardi/dotenv/issues/15
# this needs to be run after every update of .env
detach("package:dotenv", unload=TRUE)
library(dotenv)

if(!file.exists("./data")){dir.create("./data")}

Sys.getenv("apiNuuka")
Sys.getenv("UserAgent")

# CASE: PROPERTY

apiResult <- GET(url = Sys.getenv("apiNuuka"),
                 path="api/v1.0/Property/List",
                 query = list(Customer = "Helsinki"),
                 content_type_json(),
                 user_agent(Sys.getenv("UserAgent"))
)

# verify success
status_code(apiResult)
http_type(apiResult)

nuukaProps <- as.data.frame(fromJSON(content(apiResult, as="text")))

# separate locationCode from locationName

nuukaProps <- nuukaProps %>% separate(locationName, c("locationCode","locationName"), extra = "merge")

# get location from Google Geocoding API

getGeo <- function(address) {
  searchAddress <- paste(address,"Helsinki")

  geoResult <- GET(url = Sys.getenv("apiGoogleGeo"),
                   path="maps/api/geocode/json",
                   query=list(address=searchAddress, key=Sys.getenv("GoogleAPIKey")))
  
  print(paste(address,"API Call Status:",geoResult$status_code))
  
  return(geoResult)
}

nuukaProps[, 'latitude'] = NA
nuukaProps[, 'longitude'] = NA
nuukaProps[, 'streetAddress'] = NA
nuukaProps[, 'locationType'] = NA

for(n in 1:100) {
  
  response <- getGeo(nuukaProps$locationName[n])
  
  df <- as.data.frame(fromJSON(content(response, as="text")))

  nuukaProps$latitude[n] <- df$results.geometry$location$lat
  nuukaProps$longitude[n] <- df$results.geometry$location$lng
  nuukaProps$streetAddress[n] <- df$results.formatted_address
  nuukaProps$locationType[n] <- df$results.geometry$location_type
  
  Sys.sleep(1)
}

# write JSON

write_json(nuukaProps, "./data/nuuka_properties_top100.json")

# Get energy data
