#
# Week 4 Assignment 
#

library(shiny)
library(plotly)

# Define server logic required to draw a box plot
shinyServer(function(input, output) {

    output$boxplot <- renderPlotly({
      
      var <- switch(input$var,
                    "Plant" = CO2$Plant,
                    "Location" = CO2$Type,
                    "Treatment" = CO2$Treatment)
      
      plot_ly(CO2, x= ~uptake, color= var, type="box")
    })

})
