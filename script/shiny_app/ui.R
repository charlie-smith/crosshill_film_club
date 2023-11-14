
# ui.R

secure_app(

  ui <- fluidPage(
    
    h1("Crosshill Film Club: Movie Selector"),
    br(),
    h3("Click the button below to randomly generate a list of 3 films."),
    br(),
    actionButton(inputId = "new_films", label = "Click here"),
    tableOutput("text")
  )

)