shinyUI(
pageWithSidebar(
  headerPanel("Project Developing Data products jdemoya"),

  sidebarPanel(
    numericInput('Valuea','Value a',1,min=0.1,max=1000,step=0.1),
    numericInput('Valueb','Value b',1,min=0,max=1000,step=0.1),
    numericInput('Valuec','Value c',1,min=0,max=1000,step=0.1),
    submitButton('Compute'),
  ),
  mainPanel(
    h3('Parameters'),
	h4('Value a'),
	verbatimTextOutput("inputValuea"),
	h4('Value b'),
	verbatimTextOutput("inputValueb"),
	h4('Value c'),
	verbatimTextOutput("inputValuec"),
	h4('Roots Second Grade Equation ax^2 + bx + c = 0 '),
	verbatimTextOutput("roots")
  )
 )
);
