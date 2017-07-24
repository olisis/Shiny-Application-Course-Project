data(euro)
convertCurrency<-function(fromunit,  tounit, fromamount) {
  exchangeRate<-euro.cross[fromunit, tounit]
  outamount <-  exchangeRate*fromamount
  print(outamount)
}
shinyServer(
  function(input, output) {
    
    output$result <- renderPrint({
      convertCurrency(
        input$fromunit,
        input$tounit,
        input$fromamount
      ) 
    })
  }
)