library(dplyr)
library(lubridate)
library(eurostat)
library(writexl)

library(RPostgreSQL)
library(odbc)

eurostat.df <- as.data.frame(seq(as.Date("2020-1-1"), as.Date("2024-12-31"), by = "day"))

colnames(eurostat.df) <- c("ReadableDate")

# faktataulussa DateKey toimii viiteavaimena kohteena vastaavan dimensiotaulun BusinessKey

eurostat.df <- eurostat.df %>% mutate(DateKey = as.integer(ReadableDate))

# export käyttäjille jotta helpompi selailla aineistoja

toc <- get_eurostat_toc()
write_xlsx(toc, "eurostat.xlsx")

# kuukausitason kuluttajadata ei_bsco_m
# teollisuus kuukausidata ei_bsin_m_r2
# rakentaminen kuukausidata ei_bsbu_m_r2
# palvelut kuukausidata ei_bsse_m_r2
# vähittäiskauppa kuukausidata ei_bsrt_m_r2

bsco.df <- get_eurostat("ei_bsco_m")
bsin.df <- get_eurostat("ei_bsin_m_r2")
bsse.df <- get_eurostat("ei_bsse_m_r2")
bsbu.df <- get_eurostat("ei_bsbu_m_r2")
bsrt.df <- get_eurostat("ei_bsrt_m_r2")

# huom. eurostat sijoittaa kuukausiarvot kuun ensimmäiselle päivälle

# ====== BSCO ======

eurostat.all <- merge(eurostat.df, bsco.df[,c("indic","unit","geo","time","values")], 
                      by.x = c("ReadableDate"), by.y = c("time"), all.x = TRUE, all.y = TRUE)

colnames(eurostat.all)[3] = "indicator"
colnames(eurostat.all)[6] = "value"

# ====== BSBU ======

eurostat.append <- merge(eurostat.df, bsbu.df[,c("indic","geo","time","values")], 
                      by.x = c("ReadableDate"), by.y = c("time"), all.x = TRUE, all.y = TRUE)

eurostat.append$unit = ""
colnames(eurostat.append)[3] = "indicator"
colnames(eurostat.append)[5] = "value"
colnames(eurostat.append)[6] = "unit"

eurostat.all <- rbind(eurostat.all, eurostat.append)

# ====== BSRT ======

eurostat.append <- merge(eurostat.df, bsrt.df[,c("indic","unit","geo","time","values")], 
                         by.x = c("ReadableDate"), by.y = c("time"), all.x = TRUE, all.y = TRUE)

colnames(eurostat.append)[3] = "indicator"
colnames(eurostat.append)[6] = "value"

eurostat.all <- rbind(eurostat.all, eurostat.append)

# ====== BSSE ======

eurostat.append <- merge(eurostat.df, bsse.df[,c("indic","unit","geo","time","values")], 
                         by.x = c("ReadableDate"), by.y = c("time"), all.x = TRUE, all.y = TRUE)

colnames(eurostat.append)[3] = "indicator"
colnames(eurostat.append)[6] = "value"

eurostat.all <- rbind(eurostat.all, eurostat.append)

# ====== BSIN ======

eurostat.append <- merge(eurostat.df, bsin.df[,c("indic","unit","geo","time","values")], 
                         by.x = c("ReadableDate"), by.y = c("time"), all.x = TRUE, all.y = TRUE)

colnames(eurostat.append)[3] = "indicator"
colnames(eurostat.append)[6] = "value"

eurostat.all <- rbind(eurostat.all, eurostat.append)

eurostat <- subset(eurostat.all, ReadableDate >= "2020-01-01")

# ====== INSERT DATABASE =======

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_eurostat")

dbWriteTable(con, table_id, eurostat, overwrite = TRUE)

dbDisconnect(con)

paste("Inserted", dbGetRowsAffected(rs) ,"rows.")
