library(dplyr)
library(RPostgreSQL)
library(odbc)

# NACE R2 organisaatioluokitus

c1 <- c("B-S_X_O_S94","All classes","Kaikki luokat")
c2 <- c("B_E","Industry","Teollisuus")
c3 <- c("F","Construction","Rakentaminen")
c4 <- c("G","Wholesale and retail trade","Tukku- ja vähittäiskauppa")
c5 <- c("H","Transportation and storage","Logistiikka-ala")
c6 <- c("I","Accomodation and food service activities","Majoitus- ja ravitsemusala")
c7 <- c("J","Information and communication","Viestintä ja tietoliikenne")
c8 <- c("K-N","Financial and insurance","Vakuutus ja rahoitus")
c9 <- c("P-S_X_S94","Education, human health and social work","Koulutus ja terveydenhoito")

nacer2 <- as.data.frame(rbind(c1,c2,c3,c4,c5,c6,c7,c8,c9))

colnames(nacer2) <- c("code", "labelEN", "labelFI")

rm(c1,c2,c3,c4,c5,c6,c7,c8,c9)

# lisätään tiedot datakatalogiin
catalogEntry13 <- list("EUROSTAT","taxonomy","dim_nace_r2","NACE r2 Organization Classes",as.Date(today()))

# POPULATE TABLES

con <- DBI::dbConnect(odbc::odbc(), "dap-pgdb01")
s1 = ("SET application_name = 'RStudio - 2023.06.1';")

dbExecute(con, schema = "dw", statement = s1)

table_id <- Id(schema = "dw", table = "dim_nace_r2")

dbWriteTable(con, table_id, nacer2, overwrite = TRUE)

dbDisconnect(con)