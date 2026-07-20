### install packages
packs <- c(
  "dataverse",
  "causaldata",
  "data.table",
  "estimatr",
  "evaluate",
  "fixest",
  "ggplot2",
  "haven",
  "magrittr",
  "modelsummary",
  "openssl",
  "ragg",
  "stringr",
  "this.path",
  "tinytable",
  "xfun"
)

options(repos = c(CRAN = "https://packagemanager.posit.co/cran/2026-07-17"))

install.packages(packs)
