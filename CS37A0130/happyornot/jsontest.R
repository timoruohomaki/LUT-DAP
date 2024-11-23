library(tidyr)
library(dplyr)
library(jsonlite)
library(haven)
library(lubridate)

getData <- function() {
  
  keys <- c("2024-23-11","2024-24-11","2024-25-11")
  
  # dput(as.character(df$date))
  
  values <- c(0.1,0.4,0.6)

  dataReturn <- list()
  
  for(i in 1:length(keys)) {
    dataRow <- list()
    dataRow[keys[i]] <- values[i]
    
    dataReturn[[i]] <- dataRow
  }
  
  return(dataReturn)
  
}

getObject <- function() {
  
  jsonList <- (list(n = "Temperature", dt = "double", unit = "C", data=getData()))
  
  return(jsonList)
}

toJSON(list(t=getObject()), auto_unbox = TRUE) %>% jsonlite::prettify()
