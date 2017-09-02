
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Forward Calculator"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        numericInput("rate", label = h3("rate (continuous)"), value = .05),
        numericInput("tFwd", label = h3("foward expiration (in years)"), value = .25),
        numericInput("spot", label = h3("Spot Index"), value = 40.0)
        

    ),

    # Show a plot of the generated distribution
    mainPanel(
        hr(),
        fluidRow(column(3, verbatimTextOutput("fwd")))
    )
  )
))
