library(shiny)

shinyServer(function(input, output) {
  
  # sorted columns are colored now because CSS are attached to them
  output$mytable1 <- renderDataTable({
    mtcars
  }, options = list(orderClasses = TRUE))
  
  
})