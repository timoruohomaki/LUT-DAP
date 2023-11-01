# luodaan faktataulu kuluttajabarometrista

# käsitteet: https://stat.fi/tilasto/dokumentaatio/kbar#K%C3%A4sitteet

library(pxweb)

Sys.setlocale(locale="UTF-8")

d <- pxweb_interactive("statfin.stat.fi")

d$url

# https://statfin.stat.fi/PXWeb/api/v1/fi/StatFin/yrtt/statfin_yrtt_pxt_141d.px