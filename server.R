rootSquare <- function(a,b,c) {
   x1 <- ((-1)*b + sqrt(as.complex(b^2 - 4*a*c)))/(2*a);
   x2 <- ((-1)*b - sqrt(as.complex(b^2 - 4*a*c)))/(2*a);
   paste(c(x1,x2),collapse=", ");
}

shinyServer(
  function(input, output){
    a <- reactive({as.numeric(input$Valuea)})
    b <- reactive({as.numeric(input$Valueb)})
    c <- reactive({as.numeric(input$Valuec)})
    output$inputValuea <- renderPrint({input$Valuea})
    output$inputValueb <- renderPrint({input$Valueb})
    output$inputValuec <- renderPrint({input$Valuec})
    output$roots <- renderPrint({rootSquare(input$Valuea,input$Valueb,input$Valuec)})
  }
)
