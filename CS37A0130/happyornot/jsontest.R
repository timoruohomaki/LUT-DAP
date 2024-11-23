library(dplyr)
library(jsonlite)

getData <- function() {
  
  dataList <- list()
  
  for (i in cars) {
    dataList <- append(dataList,list(list("a"=i$speed),list("b"=i$dist)))
  }
  
  return(dataList)
  
}

toJSON(list(n = "Temperature", unit = "Celsius", list(data=getData())), auto_unbox = TRUE) %>% jsonlite::prettify()

# toJSON(list(n = "Temperature", unit = "Celsius", data=list(list("foo" = "bar"), list("baz"="qux"), list("fred" = "thud"))),auto_unbox = TRUE) %>% jsonlite::prettify()
