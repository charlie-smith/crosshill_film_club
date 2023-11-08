library(shiny)

ui = fluidPage(
  sliderInput("number", "number", value = 10, min = 0, max = 50),
  actionButton("click", "Change output"),
  textOutput("text")
)

server = function(input, output, session) {
  
  output$text = renderText({
    input$button
    req(input$button) #to prevent print at first lauch
    isolate(print(input$number))
  })
}

shinyApp(ui, server)
