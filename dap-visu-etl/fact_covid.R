library(dplyr)
library(tidyr)
library(tidyverse)
library(fs)
library(RPostgreSQL)
library(odbc)
library(lubridate)

# tuodaan csvt paikallisesta datakansiosta ja yhdistetään yhteen dataframeen
# huom korjaa polku jos käytät tätä eri koneella
# aineisto: https://github.com/CSSEGISandData/COVID-19 (JHU datasetti)

if(!file.exists("./data")){dir.create("./data")}

filePaths <- fs::dir_ls(r"(D:\git\COVID-19\csse_covid_19_data\csse_covid_19_daily_reports\)", glob = "*.csv")

fileData <- list()

for (i in seq_along(filePaths)) {
        
        temp <- read_csv(file = filePaths[[i]])
        
        if(ncol(temp) == 14) {
                
                fileData[[i]] <- temp
                fileData[[i]]$OriginDate <- mdy(str_sub(filePaths[[i]],-14,-5))
                fileData[[i]]$DateKey <- as.integer(fileData[[i]]$OriginDate)
        }
}

rm(temp)
rm(filePaths)
rm(i)

# luodaan yksi covidObs -dataframe johon yhdistetään tuodut objektit
# varmistetaan aineiston eheys
# jos sama määrä rivejä, ei ollut puuttuvia ja .completed saa poistaa

covidObs <- as.data.frame(do.call("bind_rows", fileData))

covidObs.completed <- covidObs %>% mutate(tgDate = as.Date(OriginDate)) %>% complete(tgDate = seq.Date(min(tgDate), 
                                                                                                            max(tgDate),
                                                                                                          by="day"))

rm(covidObs.completed)
rm(fileData)

# ==== KORJATTAVAA ====

# poistetaan muut maat kuin Eurooppa ja lisätään maakoodit dimensiotaululle

# US -> United States
# covidObs.clean1 <- covidObs %>% mutate(Country_Region = ifelse(Country_Region == "US","United States",Country_Region))

covidObs.clean1 <- covidObs %>% dplyr::filter(Country_Region %in% euroCountries$CountryNameEN)

# lisätään maakoodit

euro <- euroCountries %>% select(CountryNameEN, Alpha2Code)

covidObs.clean2 <- covidObs.clean1 %>% left_join(euro, c("Country_Region" = "CountryNameEN"))

rm(euroCountries,euro)
rm(covidObs.clean1)

# Incident_rate ja Incidence_rate ovat sama asia -> yhdistetään

covidObs.clean3 <- covidObs.clean2 %>% mutate(IncidentRate = ifelse(is.na(Incident_Rate),
                                                                         `Incidence_Rate`,
                                                                         `Incident_Rate`))
rm(covidObs.clean2)

# Case_Fatality_Ratio ja Case-Fatality_Ratio ovat sama asia -> yhdistetään

covidObs.clean4 <- covidObs.clean3 %>% mutate(CaseFatalityRatio = ifelse(is.na(Case_Fatality_Ratio),
                                                                         `Case-Fatality_Ratio`,
                                                                         `Case_Fatality_Ratio`))

# lyhennetään sarakenimiä ja poistetaan turhat

covidObs.clean5 <- covidObs.clean4 %>% rename(Country = Country_Region)

covidObs.clean6 <- covidObs.clean5 %>% select(-c(FIPS, Admin2, Province_State, Combined_Key,
                                                 Case_Fatality_Ratio,`Case-Fatality_Ratio`,
                                                 Incidence_Rate))

rm(covidObs.clean3,covidObs.clean4,covidObs.clean5)

# ladataan taulu tietokantaan

# ====== INSERT DATABASE =======

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "fact_covid_JHU")

dbWriteTable(con, table_id, covidObs.clean6, overwrite = TRUE)

dbDisconnect(con)



