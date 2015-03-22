#
# server.R file for DevDataProd assignment, Coursera march 2015
# By Niels Ole Dam
#

library(shiny)
library(mapDK)

shinyServer(
    function(input, output, session) {
        output$ggObj <- renderPlot({
            name <- as.character(input$radio)
            mapDK(values = "stemmer", id = "id", 
                  data = subset(votes, navn == name),
                  detail = "polling", show_missing = FALSE,
                  guide.label = paste("Votes \n", name, " (pct)", sep=""))
        })
    }
        )