
#################################################.
##' Shiny app so anyone can generate a sample ###
#################################################.

here::i_am("./app.R")
library(here)
library(tidyverse)
library(googlesheets4)
library(shiny)


# source("./script/sampler.R")


shinyApp(ui, server)