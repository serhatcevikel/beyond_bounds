library(shiny)
library(data.table)
library(tidyverse)
library(plotly)
library(ggConvexHull)

data_all_k2 <- readRDS("~/databb/rds/data_all_k2.rds")

ui = fluidPage(
    sliderInput("iter", "Iter:",
                1, data_all_k2[, max(iter)], 1,
                step = 1,
                animate = animationOptions(
                  interval = 2000,
                  loop = FALSE)
                ),
    plotlyOutput("clusters")
  )

server = function(input, output) {
      output$clusters = renderPlotly({
        data_all_k3 <- data_all_k2 %>%
          mutate(cl = sprintf("%02d", cl)) %>%
          filter(iter == input$iter)

      p <-  data_all_k3 %>%
        ggplot(aes(x = xval, y = yval, fill = cl, size = 5 + cntr * 10)) +
        geom_convexhull(data = data_all_k3[cntr == 0], alpha= 0.2, aes(color = NULL, fill = cl)) +
        geom_point(shape=21, color = "red", aes(stroke = chng * 0.5, fill = cl, alpha = 1 - cntr * 0.5)) +
        scale_size_identity() +
        scale_fill_manual(labels = unique(data_all_k3$cl), values = unique(data_all_k3$clr)) +
        scale_alpha_identity() +
        theme(legend.position="bottom") +
        labs(x = NULL, y = NULL)
      
      ggplotly(p) %>%
        layout(legend = list(orientation = "h", x = 0, y = -100), height = 500)
})
}

shinyApp(ui = ui, server = server)