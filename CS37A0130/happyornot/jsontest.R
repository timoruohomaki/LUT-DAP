library(dplyr)
library(jsonlite)

toJSON(list(n = "Temperature", unit = "Celsius", data=list(list("foo" = "bar"), list("baz"="qux"), list("fred" = "thud"))),auto_unbox = TRUE) %>% jsonlite::prettify()
