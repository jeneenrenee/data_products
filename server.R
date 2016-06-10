library(shiny)

shinyServer(
    
    function(input,output) {
        vegetables <- c("asparagus","beets", "broccoli", "brussles sprouts", "beans", "cabbage", "carrots",
                        "cauliflower", "chard", "corn", "cucumbers", "greens", "kale", "lettuce", "onions",
                        "peas", "peppers", "radishes", "squash", "tomatoes", "turnips")
        
        numbers <- c(10, 3, 1, 1, 1, 1, 3, 1, 1, 4, 1, 3, 1, 3, 1, 3, 1, 1, 1, 1, 3)
        
        type <- c("plants", "feet", "plants", "plants", "poles", "plants", "feet",
                  "plants", "plants", "feet", "hills", "feet", "plants", "feet",
                  "feet", "feet", "plants", "feet", "hills", "plants", "feet")
        
        output$people <- reactive({as.numeric(input$P)})
        vList <- reactive({(as.numeric(input$V))})
        outString <- function(x) {
            amt <- as.numeric(numbers[x]) * input$P
            z <- paste(vegetables[x], ":", amt, type[x], "\n")
            z
        }
        
        output$veggies <- reactive({gsub(",","",lapply(vList(), outString))})
             
        #output$veggies <- reactive({lapply(vList(), outString)})
    }
)