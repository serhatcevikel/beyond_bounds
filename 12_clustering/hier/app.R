library(shiny)
library(data.table)
library(tidyverse)
library(plotly)
library(ggConvexHull)

data_all <- readRDS("~/databb/rds/data_all.rds")

ui = fluidPage(
    sliderInput("iter", "Iter:",
                0, data_all[, max(iter)], 0,
                animate = animationOptions(
                  interval = 2000,
                  loop = FALSE)
                ),
    plotlyOutput("clusters")
  )

server = function(input, output) {
      output$clusters = renderPlotly({
        data_all2 <- data_all %>%
          mutate(cl = sprintf("%03d", cl)) %>%
        filter(iter == input$iter)
      
      p <-  data_all2 %>%
        ggplot(aes(x = xval, y = yval, stroke = linex, size = 5)) +
        geom_convexhull(alpha=.5, aes(fill = cl), colour = "black", linewidth = 0.1) +
        geom_point(shape=21, color = "red", aes(fill = cl)) +
        scale_fill_manual(labels = unique(data_all2$cl), values = unique(data_all2$clr)) +
        scale_size_identity() +
        guides(color = "none") +
        theme(legend.position="bottom") +
        labs(x = NULL, y = NULL)
      
      ggplotly(p) %>%
        layout(legend = list(orientation = "h", x = 0, y = -100), height = 500)
})
}

shinyApp(ui = ui, server = server)