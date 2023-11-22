
##################.
### Deploy App ###
##################.

library(shinymanager)

rsconnect::setAccountInfo(name='charliedontsurf',
                          token='80BAD0AB6F12A64E41B7C6A0E74350EC',
                          secret='72fx004Kqz7Z2KfVPUPyRfSTuY/kW9dCpxF3X1rf')

rsconnect::deployApp(here("script", "filmclub_app"))


# Warning: Error in gs4_auth: Can't get Google credentials.
# Are you running googlesheets4 in a non-interactive session? Consider:
# Call `gs4_deauth()` to prevent the attempt to get credentials.
# Call `gs4_auth()` directly with all necessary specifics.
# See gargle's "Non-interactive auth" vignette for more details:
# https://gargle.r-lib.org/articles/non-interactive-auth.html>

