// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 14-17: Nested push and pop

// Global angle for rotation
float theta = 0;
float r = 0;
float b = 0;
float g = 0;

void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(255);
  stroke(r,g,b);
  

//  float newMouseX = map(mouseX,0,width,0,90);
//    println(newMouseX);
  
  // Translate to center of window
  translate(width/2,height/2);
  
  // Loop from 0 to 360 degrees (2*PI radians)
  for(float i = 0; i < TWO_PI; i += 0.2) {
    
    // Push, rotate and draw a line!
    // The transformation state is saved at the beginning of each cycle through the for loop and restored at the end. 
    // Try commenting out these lines to see the difference!
    pushMatrix();
    rotate(theta + i);
//    line(0,0,100,0);
      fill(b,25);
      stroke(r,g,b);
      ellipse(0,0,30,30);
   
     // If the mouse is on the right side of the screen is equivalent to 
  // "if mouseX is greater than width divided by 2."
  if(mouseX > width/2) {
    b = b + 1; 
  } else {
    b = b - 1;
  }

  // If r is greater than 255, set it back to 255.  
  // If r is less than 0, set it back to 0.
  if (b > 255) {
    b = 255; 
  } else if (b < 0) {
    b = 0; 
  }

    
    // Loop from 0 to 360 degrees (2*PI radians)
    for(float j = 0; j < TWO_PI; j += 0.5) {
      // Push, translate, rotate and draw a line!
      pushMatrix();
      translate(100,0);
      rotate(-theta-j);
//      ellipse(newMouseX,0,20,20);
      ellipse(89,0,20,20);
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

