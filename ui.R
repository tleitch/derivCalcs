
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

# tagList(
# 
#     navbarPage(
# 
#   # Application title
#   tabPanel("Forward Calculator",
# 
#   # Sidebar with a slider input for number of bins
# 
#     sidebarPanel(

#         
# 
#     ),
# 
#     # Show a plot of the generated distribution
#     mainPanel(
#         hr(),
#         fluidRow(column(3, verbatimTextOutput("fwd")))
#     )
# 
#   ),
#   tabPanel("Tab 2", "This panel is intentionally left blank"),
#   tabPanel("Tab 3", "This panel is intentionally left blank")
# ))
 tagList(
        navbarPage(
            # theme = "cerulean",  # <--- To use a theme, uncomment this
            "Derivative Calculators",
            tabPanel("Fwd Calculator",
                         column(3,
                         actionButton("calcFwd", "Reveal"),
                                 numericInput("rate", label = h3("r (continuous)"), value = .05),
                                 numericInput("tFwd", label = h3("T"), value = .25),
                                 numericInput("spot", label = h3("S0"), value = 40.0)
                         ),

               #     ),
                     h4(fluidRow(
                         column(3, textOutput("fwd"))
                     ))
            ),
            tabPanel("Fwd Reval",                         
                     column(3,
                            actionButton("reval", "Reveal"),
                            numericInput("k", label = h3("K"), value = 40.503), 
                            numericInput("rate3", label = h3("r(T1) (continuous)"), value = .06),
                            numericInput("tFwd3", label = h3("T1"), value = .15),
                            numericInput("spot3", label = h3("S(T1)"), value = 38.0)
            ),
            
            #     ),
            h4(fluidRow(
                column(3, textOutput("fwd2")),
                column(3, textOutput("k2"))
            ))
            )
            #tabPanel("Navbar 3", "This panel is intentionally left blank")
        )
    )

