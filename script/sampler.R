
#######################################################################.
### Read Film Club Google Sheet and Take a Random Sample of 5 Films ###
#######################################################################.

# Author: Charlie Smith
# Date: 2023-11-07



# 1 - Load packages -------------------------------------------------------
library(tidyverse)
library(googlesheets4)


# 2 - Set constants -------------------------------------------------------
url <- "https://docs.google.com/spreadsheets/d/1Pz1FN4p9nAyt40HBfpQgoS4Rr-jTYnxG3w-Wpj-g4DY/edit?usp=drivesdk"


# 3 - Load google sheet ---------------------------------------------------
df <- read_sheet(url)


# 4 - Sample 5 films ------------------------------------------------------
sample_vector <- sample(df$Title, 5)

sample_vector


