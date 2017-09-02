
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

    output$fwd <- renderPrint({ input$spot*exp(input$rate*input$tFwd) })
    

})
