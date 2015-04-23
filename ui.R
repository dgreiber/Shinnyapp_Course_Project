library(shiny)
library(ggplot2)  # for the diamonds dataset

shinyUI(fluidPage(
  title = 'Examples of DataTables',
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        'input.dataset === "mtcars"',
        helpText('This is the mtcars dataset displayed in a Shinyapp.
Enter data in the Search box to filter for that data, or click on any
of the column headers to sort by that column. Additional tabs can
be added to further enhance the application.')
      )
    ),
    mainPanel(
      tabsetPanel(
        id = 'dataset',
        tabPanel('mtcars', dataTableOutput('mytable1')),
        tabPanel('additional tabs go here')
      )
    )
  )
))