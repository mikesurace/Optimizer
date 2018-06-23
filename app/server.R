#server script

shinyServer(function(input, output, session) {
  
  #Display Initial Draft Board
  output$DraftBoard <- DT::renderDataTable(DT::datatable(board,
                                                         options = list(pageLength = 25, dom = 't'), 
                                                         rownames = FALSE))
  
  
  #Create counter to know how many people have been drafted
  vals <- reactiveValues(count = 0)
  observeEvent(input$draftbutton, vals$count <- vals$count + 1)
  output$text <- renderUI({
    HTML(paste(sprintf("You have chosen: %s</br>", vals$count)))
  })
  
  
  #Calculate Projected Fantasy Points Based on User's League Settings
  observeEvent(input$calcproj, {
    
    
    
    
    
  })
  
  
  
  
  
  
  
  
  #Update Draft Board
  #observeEvent(input$draftbutton, {
  #          
  #          if(vals$count < 13){
  #            colcount <- 1
  #          }
  #      
  #           board[colcount, vals$count + 1] <- input$drafted
  #                    
  #          
  #           output$DraftBoard <- DT::renderDataTable(DT::datatable(board,
  #                                                                  options = list(pageLength = 25, dom = 't'), 
  #                                                                  rownames = FALSE))
  #  
  #})


  

})
