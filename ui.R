#
# ui.R file for DevDataProd assignment, Coursera march 2015
# By Niels Ole Dam
#

library(shiny)
library(shinythemes)
library(mapDK)

# Get names of parties
names <- levels(as.factor(votes$navn))

shinyUI(fluidPage(theme = shinytheme("cerulean"),
    fluidRow(
        column(width=12, align="center",
               h1("Danish general election 2011")
               )
        ),
    column(width=4,
           radioButtons("radio", label = h3("Select party"),
                        choices = names
                        )
           ),
    column(width=8,
           h3("Final result"),
           plotOutput("ggObj")
           )
    ))