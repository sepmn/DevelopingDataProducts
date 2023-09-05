library(shiny)
library(ggplot2)
shinyUI(fluidPage(
  titlePanel("Iris Dataset Scatterplot"),
  sidebarLayout(
    sidebarPanel(
      selectInput("x_axis", "X-Axis Variable:", choices = colnames(iris)),
      selectInput("y_axis", "Y-Axis Variable:", choices = colnames(iris))
    ),
    mainPanel(
      plotOutput("scatterplot")
    )
  )
))
