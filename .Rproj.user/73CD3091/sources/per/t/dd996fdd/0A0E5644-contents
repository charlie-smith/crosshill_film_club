

library(shiny)
library(readr)
library(dplyr)

ui <- fluidPage(
  actionButton("new_films", "Make my day, punk"), 
  tableOutput("text")
)

server <- function(input, output, session) {
  
  films <- function(){
    read_csv("data/films.csv") |>
      slice_sample(n = 5)
  } # sampling function definition - less nice than yours
  
  film_list <- reactiveVal(films()) # make a reactive value that calls that film sampling function
  
  observeEvent(input$new_films, {
    film_list(films())
  }) # then watch the button, and update the reactive value. This is a really weird bit, because calling a reactive with an argument updates that reactive value.
  
  output$text <- renderTable(film_list()) # standard
  
}

shinyApp(ui, server)
