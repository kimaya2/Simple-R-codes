#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output,session) {
   
  output$distPlot <- renderPlot({
    
    distType <- input$Distributions
    size <- input$sampleSize
    
    if(distType == 'Normal')
    {
      ranVec <- rnorm(size,mean = as.numeric(input$Mean),sd = as.numeric(input$sd))
      
    }
    else
    {
     ranVec <-rexp(size, rate = 1/as.numeric(input$lambda)) 
    }
    hist(ranVec, col="blue")
  })
  
})
