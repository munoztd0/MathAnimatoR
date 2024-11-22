# Full example script demonstrating rendering

library(shiny)
library(htmltools)

# Create the htmlwidget function
manim_circle <- function() {
  # Ensure p5.js is loaded
  tags$div(
    tags$script(src = "https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.4.0/p5.js"),
    tags$script(
      "
      function setupCircleAnimation() {
        let sketch = function(p) {
          let t = 0;
          
          p.setup = function() {
            let canvas = p.createCanvas(600, 400);
            canvas.parent('animation-container');
            p.frameRate(60);
          };
          
          p.draw = function() {
            p.background(220);
            
            t += 0.05;
            
            let x = p.width/2 + p.cos(t) * 100;
            let y = p.height/2 + p.sin(t) * 100;
            
            p.fill(255, 0, 0);
            p.noStroke();
            p.circle(x, y, 50);
          };
        };
        
        new p5(sketch);
      }
      
      // Ensure p5 is loaded before running
      if (window.p5) {
        setupCircleAnimation();
      } else {
        document.addEventListener('p5Loaded', setupCircleAnimation);
      }
      "
    ),
    tags$div(id = "animation-container", style = "width:600px; height:400px;")
  )
}

# Shiny UI to demonstrate rendering
ui <- fluidPage(
  titlePanel("Manim.js Circle Animation"),
  manim_circle()
)

# Server logic (empty in this case)
server <- function(input, output, session) {}

# Run the application 
shinyApp(ui, server)