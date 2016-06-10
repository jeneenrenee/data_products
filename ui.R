library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Guideline for How Many Vegetables to Plant in Your Garden"),
    sidebarPanel(
        numericInput('P', 'Enter The Number of People Your Garden Will Feed',0, min=1, max=1000, step=1),
        checkboxGroupInput('V', 'Choose Your Vegetables:',
                           c('asparagus' = '1',
                             'beets' = '2',
                             'broccoli' = '3',
                             'brussels sprouts' = '4',
                             'beans' = '5',
                             'cabbage' = '6',
                             'carrots' = '7',
                             'cauliflower' = '8',
                             'chard' = '9',
                             'corn' = '10', 
                             'cucumbers' = '11',
                             'greens' = '12',
                             'kale' = '13',
                             'lettuce' = '14',
                             'onions' = '15',
                             'peas' = '16',
                             'peppers' = '17',
                             'radishes' = '18',
                             'squash' = '19',
                             'tomatoes' = '20',
                             'turnips' = '21'))
    ),
    mainPanel(
        h4('To feed'),
        verbatimTextOutput("people"), 
        h4('people, you need:'),
        verbatimTextOutput("veggies")
    )
))
