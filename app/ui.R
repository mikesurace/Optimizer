#Define UI script for application
shinyUI(fluidPage(
      navbarPage("Fantasy Draft Optimizer",
                  theme = mycss,
                 
                  #Home Page
                  tabPanel("Getting Started", icon = icon('home'),
                           fluidPage(
                             
                           )),
                 
                 #Page for Users to configure league Settings
                 tabPanel("League Settings", icon = icon('tasks'),
                            sidebarLayout(
                                sidebarPanel(includeMarkdown('html/League_Settings.Rmd'),br(),
                                             includeMarkdown('html/offensive.Rmd'),
                                             sliderInput('ppr',"Points Per Recption",0,2,0,0.5),
                                             sliderInput('recyards',"Points Per 10 Rec Yards",0,2,1,0.5),
                                             sliderInput('rushyards',"Points Per 10 Rush Yards",0,2,1,0.5),
                                             sliderInput('passyards',"Points Per 25 Pass Yards",0,2,1,0.5),
                                             sliderInput('rectd',"Points Per Rec TD",0,10,4,1),
                                             sliderInput('rushtd',"Points Per Rush TD",0,10,4,1),
                                             sliderInput('passtd',"Points Per Pass TD",0,10,4,1),
                                             sliderInput('intthrown',"Points Per Interception Thrown",-5,0,-1,1),
                                             includeMarkdown('html/defensive.Rmd'),
                                             sliderInput('fumrecovered',"Points Per Fumble Recovered",0,5,2,1),
                                             sliderInput('deftd',"Points Per Defensive TD",0,10,6,1),
                                             sliderInput('int',"Points Per Interception",0,5,2,1)
                                             ),
                                mainPanel(fluidPage(
                                          fluidRow(column(12,
                                                  includeMarkdown('html/Projections.Rmd'))),
                                          fluidRow(column(2,checkboxInput('espn',"ESPN",FALSE)),
                                                   column(2,checkboxInput('fantasypros',"FantasyPros",FALSE)),
                                                   column(2,checkboxInput('fantasydata',"FantasyData",FALSE)),
                                                   column(2,actionButton('calcproj',"Calculate Projections")))))
                                )),
                            
                 
                 #Page for Draft Optimizer
                 tabPanel("Draft Optimizer", icon = icon('bar-chart'),
                          fluidPage(
                            fluidRow(column(width = 4,
                                            selectInput('drafted',"Select a Player to Draft:", players),
                                            actionButton("draftbutton", "Draft Player")),
                                     column(width = 4,
                                            htmlOutput("text"))),
                            
                            br(),br(),       
                            fluidRow(column(width = 12,
                                            DT::dataTableOutput("DraftBoard")))))
                 
                 
                 
                 )))


