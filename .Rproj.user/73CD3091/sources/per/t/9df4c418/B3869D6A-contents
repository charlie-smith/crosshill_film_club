
########################.
### Sampler Function ###
########################.

library(tidyverse)
library(googlesheets4)
library(shiny)

# access google sheet via url, read sheet, then return sample of 5 titles 

sample_5_films <- function(){
  
  url <- "https://docs.google.com/spreadsheets/d/1Pz1FN4p9nAyt40HBfpQgoS4Rr-jTYnxG3w-Wpj-g4DY/edit?usp=drivesdk"
  df <- read_sheet(url, sheet = "Films")
  sample_vector <- sample(df$Title, 5)

  return(sample_vector)
  
}

# vector_sample <- sample_5_films()




