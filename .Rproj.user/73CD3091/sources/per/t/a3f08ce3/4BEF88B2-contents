
########################.
### Sampler Function ###
########################.

library(tidyverse)
library(googlesheets4)
library(shiny)

# access google sheet via url, read sheet, then return sample of 5 titles 

pull_gsheets_films <- function(){
  
  url <- "https://docs.google.com/spreadsheets/d/1Pz1FN4p9nAyt40HBfpQgoS4Rr-jTYnxG3w-Wpj-g4DY/edit?usp=drivesdk"
  
  df_films <- read_sheet(url, sheet = "Films") |> 
    export(here("data", "films_options.RDS"))
  
  df_watched <- read_sheet(url, sheet = "Watched") |> 
    export(here("data", "films_watched.RDS"))

}

