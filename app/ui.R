#Define UI script for application
shinyUI(fluidPage(
      navbarPage("Fantasy Draft Optimizer",
                  theme = mycss,
                 tabPanel("Home", icon = icon('home'),
                          fluidPage(
                            fluidRow(column(width = 4,
                                            selectInput('drafted',"Select a Player to Draft:", players),
                                            actionButton("draftbutton", "Draft Player")),
                                     column(width = 4,
                                            htmlOutput("text"))),
                            
                            br(),br(),       
                            fluidRow(column(width = 12,
                                        DT::dataTableOutput("DraftBoard"))))))
      
      
      
      
      ))


