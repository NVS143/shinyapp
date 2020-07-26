library(shiny)
fluidPage(
    titlePanel("Plot Random Numbers"),
    
    sidebarLayout(
        sidebarPanel(
            h2("Settings"),
            numericInput("num_points", "Count of random numbers to be plotted", 
                         value = 500, min = 1, max = 1000, step = 10),
            sliderInput("sliderX", "Pick the Starting and Ending points X Axis",
                        -100, 100, value = c(-80, 80)),
            sliderInput("sliderY", "Pick the Staring and Ending points Y Axis",
                        -100, 100, value = c(-80, 80)),
            checkboxInput("show_xlab", "Show/Hide X Axis Label", value = TRUE),
            checkboxInput("show_ylab", "Show/Hide Y Axis Label", value = TRUE),
            checkboxInput("show_title", "Show/Hide Title"),
            submitButton("Apply changes")
        ),
        
        mainPanel(
            h3("Graph of Random Points"),
            h5("This is an app to plot random count of random numbers ,"),
            h5("The max range of count of random numbers is 1000 and minimum is 1"),
            h5("In the range selected by you in the setting side "),
            h5("Check the check box if you want the lables and main to be shown"),
            h5("Every time you make changes you need to click to the "),
            h5("Apply changes button for the application of changes."),
            plotOutput("plot1")
        )
    )
)