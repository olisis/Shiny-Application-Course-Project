shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Legacy currency converter"),
    sidebarPanel(
      selectInput("fromunit", "Convert From:",
                  choices = list("ATS", "BEF", "DEM", "ESP", "FIM", "FRF", "IEP", "ITL", "LUF", "NLG", "PTE")),
      selectInput("tounit", "Convert To:",
                  choices = list("ATS", "BEF", "DEM", "ESP", "FIM", "FRF", "IEP", "ITL", "LUF", "NLG", "PTE")),
      numericInput("fromamount", "Amount", 100),
      submitButton('Submit')
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Main",
          h4('Result '),
          verbatimTextOutput("result")),
        tabPanel("Documentation", 
            h5(tags$strong("Sidebar panel")),
            
            p("Use the first Select Box ('Convert From') to select a currency to convert from"),
            
            p("Use the second Select Box ('Convert To')to select a currency to convert to"),
            
            p("Use numericInput Box ('Amount') to select the amount to be converted"),
            
            p("Use Submit button to submit the calculation"),
            
            h5(tags$strong("Main panel")),
            
            p("The result of the calculation appears in the Main panel")
        )
      )
    )
  )
)

# table view of the generated distribution
# mainPanel(
#   tabsetPanel(
#     tabPanel(
#     tabPanel("Plot", plotOutput("plot")),
#     tabPanel("Summary", verbatimTextOutput("summary")),
#     tabPanel("Table", tableOutput("table"))
#   )
# )