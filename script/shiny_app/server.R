
# server.R

server <- function(input, output, session) {
  
  credentials <- readRDS(here("script", "admin", "credentials.RDS"))

  res_auth <- secure_server(
    check_credentials = check_credentials(credentials)
  )
  
  sample_5_films <- function(){
    
    url <- "https://docs.google.com/spreadsheets/d/1Pz1FN4p9nAyt40HBfpQgoS4Rr-jTYnxG3w-Wpj-g4DY/edit?usp=drivesdk"
    df <- read_sheet(url, sheet = "Films")
    sample_vector <- sample(df$Title, 3)
    
    return(sample_vector)
    
  } 
  
  film_list <- reactiveVal() # empty reactive value
  
  observeEvent(input$new_films, {
    film_list(sample_5_films())
  }) # then watch the button, and update the reactive value. This is a really weird bit, because calling a reactive with an argument updates that reactive value.
  
  output$text <- renderTable(film_list()) # standard
  
  
}