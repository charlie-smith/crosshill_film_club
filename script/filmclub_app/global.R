
# global.R

library(here)
library(tidyverse)
library(googlesheets4)
library(shiny)
library(rsconnect)
library(shinymanager)


gs4_auth(cache = ".secrets"#, email = TRUE, use_oob = TRUE
         )
