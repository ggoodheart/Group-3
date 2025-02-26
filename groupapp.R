library(shiny)
library(fpp3)
data("tourism")

data <- subset(tourism, Region=="Alice Springs")

ui <- fluidPage(
  selectInput(
   inputId = "purpose",
    label="Select Purpose",
    choice=unique(tourism$Purpose),
   multiple = TRUE
  ),
plotOutput("plotted_series")
)

server <- function(input, output, session) {
  output$plotted_series <- renderPlot({ autoplot(data)
    
  })
  
 #make output for purpose
  
  
}

shinyApp(ui, server)