
# global.R

library(here)
library(tidyverse)
library(googlesheets4)
library(googledrive)
library(shiny)
library(rsconnect)
library(shinymanager)


# drive_auth(path = here("script", "admin", "client_secret.json"))
# 
# gs4_auth(path = here("script", "admin", "client_secret.json"),
#           scopes = "drive.file")


googledrive::drive_auth_configure()
