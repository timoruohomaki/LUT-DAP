# luotaan date -dimensiotaulua varten tarvittava aikasarjadata
# aikajakso 1.1.2020 - 31.12.2023

library(dplyr)
library(lubridate)
library(RPostgreSQL)
library(odbc)
library(xts)
library(readr)

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

datedim.df <- as.data.frame(seq(as.Date("1995-1-1"), as.Date("2024-12-31"), by = "day"))

colnames(datedim.df) <- c("ReadableDate")

datedim.df <- datedim.df %>% mutate(BusinessKey = as.integer(ReadableDate), DayOfWeek = wday(ReadableDate, label = TRUE), 
                                    MonthOfYear = month(ReadableDate, label = TRUE),
                                    CalendarMonth = month(ReadableDate, label = TRUE), CalendarYear = as.integer(year(ReadableDate)),
                                    CalendarQuarter = quarter(ReadableDate), CalendarWeek = as.integer(isoweek(ReadableDate)),
                                    CalendarMonth = as.integer(month(ReadableDate)), DayOfMonth = day(ReadableDate))

table_id <- Id(schema = "dw", table = "dim_date")

dbWriteTable(con, table_id, datedim.df, overwrite = TRUE)

dbDisconnect(con)
