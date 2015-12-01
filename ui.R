library(shiny)
library(dygraphs)

shinyUI(fluidPage(
  titlePanel("Cumulative Return for Two Stocks"),
  
  sidebarLayout(
    sidebarPanel(
		        helpText("Input a ticker and see the stock's chart."),
    
        textInput("symb", label = h3("Input a Valid Stock Ticker"), value = "GE") 
        textInput("symb", label = h3("Input a Valid Stock Ticker"), value = "AAPL")
        dateRangeInput("date", label = h3("Input Date Range for Returns"), start = '2007-01-01', end = as.character(Sys.Date())),
        helpText("Date Format: [YYYY/MM/DD]")
     ),
        
### uncomment for static chart    
      ## mainPanel(plotOutput("plot"))

### uncomment for dygraphs chart
      mainPanel(dygraphOutput("plot"))
  )
))

