// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-17: Nested push and pop

// Global angle for rotation
float theta = 0;

void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(255);
  stroke(0);
  

  float newMouseX = map(mouseX,0,width,0,90);
    println(newMouseX);
  
  // Translate to center of window
  translate(width/2,height/2);
  
  // Loop from 0 to 360 degrees (2*PI radians)
  for(float i = 0; i < TWO_PI; i += 0.2) {
    
    // Push, rotate and draw a line!
    // The transformation state is saved at the beginning of each cycle through the for loop and restored at the end. 
    // Try commenting out these lines to see the difference!
    pushMatrix(); 
    rotate(theta + i);
    line(0,0,100,0);
    
    // Loop from 0 to 360 degrees (2*PI radians)
    for(float j = 0; j < TWO_PI; j += 0.5) {
      // Push, translate, rotate and draw a line!
      pushMatrix();
      translate(100,0);
      rotate(-theta-j);
      line(newMouseX,0,50,0);
      // We're done with the inside loop, pop!
      popMatrix();
    }
    
    // We're done with the outside loop, pop!
    popMatrix();
  }
  endShape();
  
  // Increment theta
  theta += 0.01;
}

