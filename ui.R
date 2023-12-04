
# ui.R

#secure_app(

  ui <- fluidPage(
    
    h1("Crosshill Film Club: Movie Selector"),
    br(),
    h3(
      "Add films to watch to our ",
      tags$a(
        "Google Sheet.",
        target = "_blank",
        href = "https://docs.google.com/spreadsheets/d/1Pz1FN4p9nAyt40HBfpQgoS4Rr-jTYnxG3w-Wpj-g4DY/edit?usp=drivesdk"
      )),
    br(),
    h3("Click the button below to randomly select 3 films."),
    br(),
    actionButton(inputId = "new_films", label = "Click here"),
    tableOutput("text")
  )

#)