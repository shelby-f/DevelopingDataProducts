#
# Week 4 Assignment 
#

library(shiny)

# Define UI for application that draws a box plot
shinyUI(
  fluidPage(

    # Application title
    titlePanel("Carbon Dioxide Uptake in Grass Plants"),
    helpText("Using R built in CO2 dataset, compares 3 plants, 
             in 2 cities, under 2 treatments."),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("data", 
                        label =("Select x"),
                        choices = c("Concentration", 
                                    "Uptake"),
                        selected = "Concentration"),
            selectInput("var", 
                        label = ("Select variable"),
                        choices = c("Plant",
                                    "Location",
                                    "Treatment"),
                        selected = "Plant"),
        ), #end side bar panel
        
    # Show a plot of the generated distribution
    
    mainPanel(plotlyOutput("boxplot"))
  )
) #end fluid page 
) #end App
