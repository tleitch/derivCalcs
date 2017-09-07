
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
    fwd<-eventReactive(input$calcFwd,{input$spot*exp(input$rate*input$tFwd)})
    fwd2<-eventReactive(input$reval,{input$spot3*exp(input$rate3*input$tFwd3)})
    mtm2<-eventReactive(input$reval,{(input$spot3*exp(input$rate3*input$tFwd3)-input$k)*exp(-input$rate3*input$tFwd3)})
    

    output$fwd <- renderText( paste("F=",fwd()))
    output$fwd2 <- renderText( paste("K=F=",fwd2()))
    output$k2 <- renderText( paste("f=",mtm2()))
    
    

})
