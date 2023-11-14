
# Code to create the credential files
dir.create(here("script", "admin")) # creates folder if it doesn't exist

credentials_df <- data.frame(
  user = c("crosshillfilmclub"), # mandatory
  password = c("rosebud"), # mandatory
  stringsAsFactors = FALSE)

saveRDS(credentials_df, here("script", "admin", "credentials.RDS"))
