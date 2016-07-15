#!/usr/bin/R

## Install the Hadleyverse packages (and some close friends).
install.packages(
  c("broom",
    "DiagrammeR",
    "devtools" ,
    "dplyr" ,
    "ggplot2" ,
    "ggthemes" ,
    "haven" ,
    "httr" ,
    "knitr" ,
    "lubridate" ,
    "packrat" ,
    "pryr" ,
    "purrr" ,
    "reshape2" ,
    "readr" ,
    "readxl" ,
    "revealjs" ,
    "rmarkdown" ,
    "rmdformats" ,
    "rstudioapi" ,
    "rticles" ,
    "rvest" ,
    "rversions" ,
    "testthat" ,
    "tidyr" ,
    "shiny" ,
    "stringr" ,
    "svglite" ,
    "tibble" ,
    "tufte" ,
    "xml2",
    "rJava") ,
    repos = "http://cran.rstudio.com"
)

source(‘https://bioconductor.org/biocLite.R’)
biocLite()

devtools::install_github("rstudio/rmarkdown")
