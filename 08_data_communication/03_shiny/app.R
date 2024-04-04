library(shiny)
library(bslib)
library(tidyverse)
library(data.table)

# template from https://shiny.posit.co/r/getstarted/shiny-basics/lesson1/index.html

# Define UI for app that draws a histogram ----
ui <- page_sidebar(
  # App title ----
  title = "Simulate Central Limit Theorem",
  # Sidebar panel for inputs ----
  sidebar = sidebar(
    # Input: Slider for the number of bins ----
    sliderInput(
      inputId = "series",
      label = "Number of series:",
      min = 1,
      max = 200,
      value = 1
    )
  ),
  # Output: Histogram ----
  plotOutput(outputId = "distPlot")
)

# for input functions:
# https://shiny.posit.co/r/getstarted/build-an-app/reactive-flow/ui-inputs.html

# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
  # Simulation fo Central Limit Theorem ----
  # with requested number of series.
  # The series are averaged
  # This expression that generates a histogram is wrapped in a call
  # to renderPlot to indicate that:
  #
  # 1. It is "reactive" and therefore should be automatically
  #    re-executed when inputs (input$series) change
  # 2. Its output type is a plot
  output$distPlot <- renderPlot({
    
    reps <- input$series
    clt1 <- apply(replicate(reps, runif(1e3)), 1, mean)
    data.table(clt1) %>%
      ggplot(aes(x = clt1)) +
      geom_histogram(bins = 50) +
      ggtitle("Central Limit Theorem Simulation") +
      scale_y_continuous(limits = c(0, 100))
 
  }) 
}

# for renderer functions
# https://shiny.posit.co/r/getstarted/build-an-app/reactive-flow/render-functions.html

shinyApp(ui = ui, server = server)
