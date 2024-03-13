library(readxl)
library(tidyverse)
library(jsonlite)
library(dplyr)

if(!file.exists("./data")){dir.create("./data")}

dataFile <- "./data/ostolaskudata-2022-raw.xlsx"

ostolasku.raw <- read_excel(dataFile,col_names = TRUE)

ostolasku.clean1 <- ostolasku.raw

# faktoroi sarakkeet joissa tarpeen

ostolasku.clean1$`Kunnan nimi` <- as.factor(ostolasku.clean1$`Kunnan nimi`)
ostolasku.clean1$`Kunnan y-tunnus` <- as.factor(ostolasku.clean1$`Kunnan y-tunnus`)
ostolasku.clean1$`Toimittajanro` <- as.factor(ostolasku.clean1$`Toimittajanro`)
ostolasku.clean1$`Y-tunnus` <- as.factor(ostolasku.clean1$`Y-tunnus`)
ostolasku.clean1$`Toimittaja` <- as.factor(ostolasku.clean1$`Toimittaja`)
ostolasku.clean1$`Tiliryhmän nro` <- as.factor(ostolasku.clean1$`Tiliryhmän nro`)
ostolasku.clean1$`Tiliryhmä` <- as.factor(ostolasku.clean1$`Tiliryhmä`)
ostolasku.clean1$`Lask.tili` <- as.factor(ostolasku.clean1$`Lask.tili`)
ostolasku.clean1$`Tili` <- as.factor(ostolasku.clean1$`Tili`)
ostolasku.clean1$`Toimiala nro` <- as.factor(ostolasku.clean1$`Toimiala nro`)
ostolasku.clean1$`Toimiala` <- as.factor(ostolasku.clean1$`Toimiala`)
ostolasku.clean1$`Vastuualue nro` <- as.factor(ostolasku.clean1$`Vastuualue nro`)
ostolasku.clean1$`Vastuualue` <- as.factor(ostolasku.clean1$`Vastuualue`)
ostolasku.clean1$`Kustannuspaikka` <- as.factor(ostolasku.clean1$`Kustannuspaikka`)

# poista ääkköset ja välilyönnit nimistä

ostolasku.clean2 <- ostolasku.clean1
colnames(ostolasku.clean2) <- c('kuntaNro','kuntaNimi','kuntaYtunnus','tosPaiva','tosNro','toimittajaNro','toimittajaYtunnus',
                                'toimittaja','tiliRyhmaNro','tiliRyhma','laskTili','tili','summa','toimialaNro','toimiala',
                                'vastuuAlueNro','vastuuAlue','kustPaikka')

# luodaan toimittajalista ja generoidaan sille mock -tilinumerot IBAN -muodossa
# esim FI49 5000 9420 0287 30
# 2 numeroa tarkiste, 3 numeroa pankki
# tarkiste laskentasääntö https://tarkistusmerkit.teppovuori.fi/tarkmerk.htm#iban 
# Nordea 1 ja 2, OP 5, Handelsbanken 31, Oma Säästöpankki 495, Ålandsbanken 6

ostolasku.clean3 <- ostolasku.clean2

kCount = nrow(ostolasku.clean3)

ostolasku.clean3$tiliIBAN <- paste0("FI38",sample(c("1","2","5","6"), size = kCount, replace = TRUE, prob = c(0.3,0.3,0.3,0.1) ),
                                    sample((10000000:69999999), size = kCount, replace = TRUE), 
                                    sprintf("%010d",(sample((100:399999), size = kCount, replace = TRUE))))

sprintf("%010d",(sample((100:399999), size = kCount, replace = TRUE)))


# luodaan toimittajataksonomiat

unique(ostolasku.clean3$tili)
unique(ostolasku.clean3$vastuuAlue)
unique(ostolasku.clean3$toimiala)
unique(ostolasku.clean3$toimialaNro)
sort(unique(ostolasku.clean3$kustPaikka))

kustplista <- as.data.frame(sort(unique(ostolasku.clean3$kustPaikka)))
colnames(kustplista) = c("kustannusPaikka")

toimittajat <- unique(ostolasku.clean3 %>% select(toimittaja, toimittajaNro, toimittajaYtunnus, tiliIBAN)) %>% 
        distinct(toimittajaNro, .keep_all = TRUE)
toimittajat.final <- toimittajat[order(toimittajat$toimittajaNro), ]


# valitaan laskurivit

ostolasku.jakso <- ostolasku.clean3[ostolasku.clean3$tosPaiva >= "2022-08-17" & ostolasku.clean3$tosPaiva < "2022-08-18",]

str(ostolasku.jakso)

summary(ostolasku.jakso)

jsonString <- toJSON(x = ostolasku.jakso, dataframe = 'rows', pretty = T)

write(jsonString, "./data/lpr_ostolaskut-08-17-2022.json")

write.csv2(kustplista, "./data/kustannuspaikat.csv", row.names = FALSE, fileEncoding = "UTF-8")

write.csv2(toimittajat.final, "./data/toimittajat.csv", row.names = FALSE, fileEncoding = "UTF-8")
