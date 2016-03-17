int yPosition = 50;
int xPosition = int(random(500));  
int score = 0;
void setup(){
  size(500, 500);  
}
void draw(){
  background(255, 204 , 255);
  yPosition+=10;
  fill(000, 221, 255);
  stroke(000,187,255);
  ellipse(xPosition, yPosition, 5, 10);
  if(yPosition == 500){
  checkCatch(xPosition);
  yPosition=0;
  xPosition=int(random(500));
  }
  noStroke();
  fill(108, 71, 2);
  rect(mouseX, 475, 100, 25);
  fill(0, 0, 0);
  textSize(16);
  text("Score: " + score, 20, 20);

}
void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}

