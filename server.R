freqw <- read.csv("http://hsequantling.wikispaces.com/file/view/all_words.csv", # url
                  sep = ",", # тип разделителя
                  header = TRUE, encoding = 'UTF-8')

library(shiny)

# Load the ggplot2 package which provides
# the 'mpg' dataset.


library(ggplot2)

# Define a server for the Shiny app
shinyServer(function(input, output) {

    
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- freqw
    if (input$lang != "All languages") {
      data <- data[data$language == input$lang,]
    }
    data
  }))
  
})

