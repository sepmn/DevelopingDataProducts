library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  output$scatterplot <- renderPlot({
    ggplot(iris, aes_string(x = input$x_axis, y = input$y_axis)) +
      geom_point()
  })
})
