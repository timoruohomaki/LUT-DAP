library(dplyr)
library(RPostgreSQL)
library(odbc)

# lähteet ISO 3166 ja countrycode.org

c1 <- c("040","43",8205000,"Austria", "Itävalta", "AT", "AUT")
c2 <- c("056","32",10403000,"Belgium","Belgia","BE","BEL")
c3 <- c("248","358",29789,"Åland Islands","Ahvenanmaa","AX","ALA")
c4 <- c("070","387",4590000,"Bosnia and Herzegovina","Bosnia ja Herzegovina","BA","BIH")
c5 <- c("100","359",7148785,"Bulgaria","Bulgaria","BG","BGR")
c6 <- c("191","385",4491000, "Croatia", "Kroatia", "HR", "HRV")
c7 <- c("196","357",1102677, "Cyprus", "Kypros", "CY", "CYP")
c8 <- c("208","45",5484000, "Denmark", "Tanska", "DK", "DNK")
c9 <- c("233","372",1291170, "Estonia", "Viro", "EE", "EST")
c10 <- c("246","358",5244000, "Finland", "Suomi", "FI", "FIN")
c11 <- c("250","33",64768389, "France", "Ranska", "FR", "FRA")
c12 <- c("276","49",81802257, "Germany", "Saksa", "DE", "DEU")
c13 <- c("300","30",11000000, "Greece", "Kreikka", "GR", "GRC")
c14 <- c("348","36",9982000, "Hungary", "Unkari", "HU", "HUN")
c15 <- c("352","354",308910, "Iceland", "Islanti", "IS", "ISL")
c16 <- c("372","353",4622917, "Ireland", "Irlanti", "IE", "IRL")
c17 <- c("380","39",60340328, "Italy", "Italia", "IT", "ITA")
c18 <- c("428","371",2217969, "Latvia", "Latvia", "LV", "LVA")
c19 <- c("438","423",35000, "Liechtenstein", "Liechtenstein", "LI", "LIE")
c20 <- c("440","370",2944459, "Lithuania", "Liettua", "LT", "LTU")
c21 <- c("442","352",497538, "Luxembourg", "Luxemburg", "LU", "LUX")
c22 <- c("470","356",403000, "Malta", "Malta", "MT", "MLT")
c23 <- c("492","377",32965, "Monaco", "Monaco", "MC", "MCO")
c24 <- c("499","382",666730, "Montenegro", "Montenegro", "ME", "MNE")
c25 <- c("528","31",16645000, "Netherlands", "Alankomaat", "NL", "NLD")
c26 <- c("578","47",5009150, "Norway", "Norja", "NO", "NOR")
c27 <- c("616","48",38500000, "Poland", "Puola", "PL", "POL")
c28 <- c("620","351",10676000, "Portugal", "Portugalia", "PT", "PRT")
c29 <- c("642","40",21959278, "Romania", "Romania", "RO", "ROU")
c30 <- c("688","381",7344847, "Serbia", "Serbia", "RS", "SRB")
c31 <- c("703","421",5455000, "Slovakia", "Slovakia", "SK", "SVK")
c32 <- c("705","386",2007000, "Slovenia", "Slovenia", "SI", "SVN")
c33 <- c("724","34",46505963, "Spain", "Espanja", "ES", "ESP")
c34 <- c("752","46",9555893, "Sweden", "Ruotsi", "SE", "SWE")
c35 <- c("826","44",62348447, "United Kingdom", "Iso-Britannia", "GB", "GBR")

euroCountries <- as.data.frame(rbind(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,
                       c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35))

colnames(euroCountries) <- c("isoCode", "countryCode", "population", "CountryNameEN", "CountryNameFI", "Alpha2Code", "Alpha3Code")

rm(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,
   c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35)

# POPULATE TABLES

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

euroCountries$countryCode <- as.integer(euroCountries$countryCode)

table_id <- Id(schema = "dw", table = "dim_country")

dbWriteTable(con, table_id, euroCountries, overwrite = TRUE)

dbDisconnect(con)




paste("Inserted", dbGetRowsAffected(rs) ,"rows.")
