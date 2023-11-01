# kansalliset vapaapäivät joina pankit ovat kiinni
# https://www.suomenpankki.fi/fi/raha-ja-maksaminen/pankkivapaapaivat/
# (vanhemmat löytyy wayback machinesta alkaen 2017)


bankhol2019 <- as.Date(c("2019-1-1","2019-1-6", "2019-4-19", "2019-4-22", "2019-5-1",
                         "2019-5-30", "2019-6-21", "2019-12-6", "2019-12-24","2019-12-25","2019-12-26"))

bankhol2020 <- as.Date(c("2020-1-1","2020-1-6", "2020-4-10", "2020-4-13", "2020-5-1",
                         "2020-5-21", "2020-6-19", "2020-12-6", "2020-12-24","2020-12-25","2020-12-26"))

bankhol2021 <- as.Date(c("2021-1-1","2021-1-6", "2021-4-2", "2021-4-5", "2021-5-1",
                         "2021-5-13", "2021-6-25", "2021-12-6", "2021-12-24","2021-12-25","2021-12-26"))

bankhol2022 <- as.Date(c("2022-1-1","2022-1-6", "2022-4-15", "2022-4-18", "2022-5-1",
                         "2022-5-26", "2022-6-24", "2022-12-6", "2022-12-24","2022-12-25","2022-12-26"))

bankhol2023 <- as.Date(c("2023-1-1","2023-1-6", "2023-4-7", "2023-4-10", "2023-5-1",
                         "2023-5-18", "2023-6-23", "2023-12-6", "2023-12-24","2023-12-25","2023-12-26"))

bankholnames <- c("Uudenvuodenpäivä", "Loppiainen", "Pitkäperjantai", "Toinen pääsiäispäivä",
                  "Vappu", "Helatorstai", "Juhannusaatto", "Itsenäisyyspäivä", "Jouluaatto",
                  "Joulupäivä", "Tapaninpäivä")

bankhol.mx <- cbind(bankhol2020,bankhol2021,bankhol2022,bankhol2023)

rownames(bankhol.mx) <- bankholnames
colnames(bankhol.mx) <- c("2020","2021","2022","2023")

rm(bankhol,bankhol2019,bankhol2020,bankhol2021,bankhol2022,bankhol2023,bankholnames)

as.Date(bankhol.mx["Helatorstai","2022"])

