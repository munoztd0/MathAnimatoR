HTMLWidgets.widget({
  name: 'manimCircle',
  type: 'output',
  
  renderValue: function(x) {
    // Clear any existing canvas
    const el = document.getElementById(this.getId());
    el.innerHTML = '';
    
    // Create canvas
    const sketch = function(p) {
      let t = 0;
      
      p.setup = function() {
        p.createCanvas(600, 400);
        p.frameRate(60);
      };
      
      p.draw = function() {
        // Clear background
        p.background(220);
        
        // Animated circle
        t += 0.05;
        
        // Moving circle
        let x = p.width/2 + p.cos(t) * 100;
        let y = p.height/2 + p.sin(t) * 100;
        
        p.fill(255, 0, 0);
        p.noStroke();
        p.circle(x, y, 50);
      };
    };
    
    // Create p5 instance
    new p5(sketch, el);
  }
});