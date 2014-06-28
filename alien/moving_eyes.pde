void setup() {
  size(500,400);
}
void draw() {
background(243,93,238);
float newMouseX = map(mouseX,0,width,60,90);
float newMouseY = map(mouseY,0,width,75,125);
println(newMouseY);

stroke(255, 255, 255);
fill(160, 220, 90);
ellipse(250, 100, 300, 150);

fill(230,243,70);
rect(245, 175, 10, 150);

stroke (255,255,255);
fill(255, 255, 255);
ellipse(175, 100, 70, 70);

stroke (255,255,255);
fill(255, 255, 255);
ellipse(325, 100, 70, 70);

stroke (0,0,0);
fill(0, 0, 255);
ellipse(newMouseX+100, newMouseY+5, 20, 20);

stroke (0,0,0);
fill(0, 0, 255);
ellipse(newMouseX+250, newMouseY+5, 20, 20);

stroke (200,0,0);
fill(200, 0, 0);
ellipse(250, 125, 20, 20);

stroke (200,0,0);
fill(200, 0, 0);
rect(225, 150, 50, 5);

}

