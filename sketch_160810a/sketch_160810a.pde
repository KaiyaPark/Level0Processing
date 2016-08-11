int birdX = 400;
int birdY = 400;
double gravity = 0.5;
double birdYVelocity = 0;
int ran = (int)random(350, 800);
int rectX = 500;
int rectY = ran;
int rand = (int)random(-350,1 );
int rectY2 = rand;
void setup(){
  size(800, 800);
  
}
void draw(){
  background(94, 240, 105);
  fill(255, 219, 33);
  ellipse(birdX, birdY, 25, 25);
  birdYVelocity += gravity;
  birdY+=birdYVelocity;
  fill(6, 203, 37);
  rect(rectX, rectY, 100, 400); 
  rect(rectX, rectY2, 100, 400); 
  rectX -=5;
  if(rectX == -500){
  rectX = 800; 
  ran = (int)random(350, 800);  
  rectY = ran;
  rand = (int)random(-350, 1);
  rectY2 = rand;  
}
if(intersects())
}
boolean intersects(int birdX, int birdY, int rectX, int rectY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
void mousePressed(){
  birdYVelocity = -15;
  
}
