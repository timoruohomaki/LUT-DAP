library(tidyr)
library(dplyr)
library(jsonlite)
library(haven)
library(lubridate)

getData <- function() {
  
  key <- Sys.time()
  value = 0.1
  
  valuelist <- list()
  valuelist[[key]] <- value

  dataReturn <- data.frame(valuelist)
  
  return(dataReturn)
  
}

getObject <- function() {
  
  jsonList <- (list(n = "Temperature", dt = "double", unit = "Celsius", data=getData()))
  
  return(jsonList)
}

toJSON(list(t=getObject()), auto_unbox = TRUE, POSIXt="ISO8601") %>% jsonlite::prettify()

getData()
