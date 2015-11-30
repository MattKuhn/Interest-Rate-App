library(shiny)
library(dygraphs)

shinyUI(fluidPage(
  titlePanel("Interest Rate APP"),
  
  sidebarLayout(
    sidebarPanel(
		        helpText("Input a ticker and see the stock's chart."),
    
        textInput("symb", label = h3("Input a Valid Stock Ticker"), value = "GE") 
                    ),

### uncomment for static chart    
      ## mainPanel(plotOutput("plot"))

### uncomment for dygraphs chart
      mainPanel(dygraphOutput("plot"))
  )
))

