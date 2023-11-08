
#################################################.
##' Shiny app so anyone can generate a sample ###
#################################################.

library(tidyverse)
library(googlesheets4)
library(shiny)


# source("./script/sampler.R")

ui <- fluidPage(
  h1("Crosshill Film Club: Movie Selector"),
  br(),
  h3("Press the button below to randomly generate a list of 5 films."),
  br(),
  actionButton(inputId = "button", label = "Click here"),
  h3(textOutput("text"))
)

server <- function(input, output, session) {
  
  # store vector to display
  values <- reactiveValues(
    vector <- sample_5_films()
  )

  # update vector when button is clicked
  observeEvent(
    input$button, {
      values$vector
    }
  )

  # display vector
  output$text <- renderText({
    values$vector
  })

}

shinyApp(ui, server)