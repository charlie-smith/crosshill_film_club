library(shiny)

ui <- fluidPage(
  tags$footer(
    "For further information visit ",
    tags$a(
      "www.google.com",
      target = "_blank",
      href = "https://www.google.com/"
    ),
    style = "position: absolute; width: 100%; color: black; text-align: center;"
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)