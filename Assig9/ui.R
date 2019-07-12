#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("DISTRIBUTIONS"),
    sidebarPanel(
       selectInput("Distributions","Select Distribution Type",
                   choices = c("Normal","Exponential","")),
       sliderInput("sampleSize",
                   "Select Sample Size",
                   min = 100,
                   max = 5000,
                   value = 1000,
                   step = 100),
       conditionalPanel(condition="input.Distributions=='Normal'",
                        textInput("Mean","Select Mean",10),
                        textInput("sd","Select Standard Deviation",3)),
       conditionalPanel(condition="input.Distributions=='Exponential'",
                        textInput("lambda","Select Exponential Lambda",1))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
))
