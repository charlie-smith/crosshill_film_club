
# server.R

server <- function(input, output, session) {
  
  # credentials <- readRDS(here("script", "admin", "credentials.RDS"))
  # 
  # res_auth <- secure_server(
  #   check_credentials = check_credentials(credentials)
  # )
  
  drive_auth(path = here("client_secret.json"))
  
  gs4_auth(path = here("client_secret.json"),
           scopes = "spreadsheets")
  
  sample_films <- function(){
  
  url <- "https://docs.google.com/spreadsheets/d/1Pz1FN4p9nAyt40HBfpQgoS4Rr-jTYnxG3w-Wpj-g4DY/edit?usp=drivesdk"

  df_watched <- read_sheet(url, sheet = "Watched") |>
  #df_watched <- import(here('films_watched.RDS')) |>
    select(Title) |>
    mutate(Title = str_to_title(Title)) |> # standardise titles
    pull()

  df_options <- read_sheet(url, sheet = "Films") |>
  #df_options <- import(here('films_options.RDS')) |>
    mutate(Title = str_to_title(Title)) |> # standardise titles
    filter(! Title %in% df_watched) # remove watched films from contention

  sample_vector <- sample(df_options$Title, 3)

  return(sample_vector)

  }
  
  film_list <- reactiveVal() # empty reactive value
  
  observeEvent(input$new_films, {
    film_list(sample_films())
  }) # then watch the button, and update the reactive value. This is a really weird bit, because calling a reactive with an argument updates that reactive value.
  
  output$text <- renderTable(film_list()) # standard
  
  
}