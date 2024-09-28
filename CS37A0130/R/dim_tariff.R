# luodaan taulu joka sisältää kuukausitason tariffihinnat sähkö- ja lämpöenergialle

library(readxl)
library(jsonlite)

if(!file.exists("./data")){dir.create("./data")}

# Energiaviraston excelissä välilehti Tammi_2020, rivi 42
# A42=005 B42=Helen Oy, Helsinki, L42 = energiamaksu, M42 = tehomaksu

saraketyypit <- c("text","text","text","numeric","numeric","numeric","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
sarakenimet <- c("vendorid","vendor","tariff1","tariff2","period","year")

# 2020
hinta.012020 <- read_excel("data/KL_hintataulukko_012020.xlsx", sheet = "Tammi_2020", range = "A42:M42", col_names = FALSE, col_types = saraketyypit)
hinta.012020 <- hinta.012020[ -c(3:11)]
hinta.012020$period <- 1
hinta.012020$year <- 2020
colnames(hinta.012020) <- sarakenimet
hinta.072020 <- read_excel("data/KL_hintataulukko_072020.xlsx", sheet = "Heinä_2020", range = "A40:M40", col_names = FALSE,col_types = saraketyypit)
hinta.072020 <- hinta.072020[ -c(3:11)]
hinta.072020$period <- 7
hinta.072020$year <- 2020
colnames(hinta.072020) <- sarakenimet

#2021
hinta.012021 <- read_excel("data/KL_hintataulukko_012021.xlsx", sheet = "Tammi_2021", range = "A42:M42", col_names = FALSE, col_types = saraketyypit)
hinta.012021 <- hinta.012021[ -c(3:11)]
hinta.012021$period <- 1
hinta.012021$year <- 2021
colnames(hinta.012021) <- sarakenimet
hinta.072021 <- read_excel("data/KL_hintataulukko_072021.xlsx", sheet = "Heinä_2021", range = "A42:M42", col_names = FALSE,col_types = saraketyypit)
hinta.072021 <- hinta.072021[ -c(3:11)]
hinta.072021$period <- 7
hinta.072021$year <- 2021
colnames(hinta.072021) <- sarakenimet

#2022
hinta.012022 <- read_excel("data/KL_hintataulukko_012022.xlsx", sheet = "Tammi_2022", range = "A43:M43", col_names = FALSE, col_types = saraketyypit)
hinta.012022 <- hinta.012022[ -c(3:11)]
hinta.012022$period <- 1
hinta.012022$year <- 2022
colnames(hinta.012022) <- sarakenimet
hinta.072022 <- read_excel("data/KL_hintataulukko_072022.xlsx", sheet = "Heinä_2022", range = "A43:M43", col_names = FALSE,col_types = saraketyypit)
hinta.072022 <- hinta.072022[ -c(3:11)]
hinta.072022$period <- 7
hinta.072022$year <- 2022
colnames(hinta.072022) <- sarakenimet

#2023
hinta.012023 <- read_excel("data/KL_hintataulukko_012023.xlsx", sheet = "Tammi_2023", range = "A43:M43", col_names = FALSE, col_types = saraketyypit)
hinta.012023 <- hinta.012023[ -c(3:11)]
hinta.012023$period <- 1
hinta.012023$year <- 2023
colnames(hinta.012023) <- sarakenimet
hinta.072023 <- read_excel("data/KL_hintataulukko_072023.xlsx", sheet = "Heinä_2023", range = "A42:M42", col_names = FALSE,col_types = saraketyypit)
hinta.072023 <- hinta.072023[ -c(3:11)]
hinta.072023$period <- 7
hinta.072023$year <- 2023
colnames(hinta.072023) <- sarakenimet

#2024
hinta.012024 <- read_excel("data/KL_hintataulukko_012024.xlsx", sheet = "Tammi_2024", range = "A43:M43", col_names = FALSE, col_types = saraketyypit)
hinta.012024 <- hinta.012024[ -c(3:11)]
hinta.012024$period <- 1
hinta.012024$year <- 2024
colnames(hinta.012024) <- sarakenimet
hinta.072024 <- read_excel("data/KL_hintataulukko_072024.xlsx", sheet = "Heinä_2024", range = "A43:M43", col_names = FALSE,col_types = saraketyypit)
hinta.072024 <- hinta.072024[ -c(3:11)]
hinta.072024$period <- 7
hinta.072024$year <- 2024
colnames(hinta.072024) <- sarakenimet

#HINTADATA
hintadata <- data.frame(hinta.012020)
hintadata <- rbind(hintadata, hinta.072020, hinta.012021, hinta.072021, hinta.012022, hinta.072022, hinta.012023, hinta.072023, hinta.012024, hinta.072024)

write_json(hintadata, "data/tariffidata.json")
