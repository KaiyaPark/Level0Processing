void setup() {
 
  size(500, 500);
}
void draw() {
  PImage face = loadImage("Cute.jpg");
  image(face, 0, 0, 500, 500);
  fill (mouseX,mouseY,mouseX);
  ellipse(122, 288, 25, 50);
    ellipse(339, 308, 45, 50);
    fill (0);
    text(mouseX + " " + mouseY, 20, 20);
    }

