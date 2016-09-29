int frogX = 250;
int frogY = 450; 
void setup(){
  size(500, 500);
  
  
  
}
void draw(){
  noStroke();
  background(167,167,167);
  fill(172, 242, 171);
  ellipse(frogX, frogY, 50, 40);
  ellipse(frogX-15,frogY+15, 10, 15); 
  ellipse(frogX+15,frogY+15, 10, 15);
  fill(0,0,0);
  ellipse(frogX-10,frogY-7, 10, 10);
  ellipse(frogX+10,frogY-7, 10, 10);
  fill(255,255,255);
  ellipse(frogX-10,frogY-8, 5, 5);
  ellipse(frogX+10,frogY-8, 5, 5);
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      frogY = frogY-5;
      }
      else if(keyCode == DOWN)
      {
       frogY = frogY+5;
      }
      else if(keyCode == RIGHT)
      {
       frogX = frogX+5;
      }
      else if(keyCode == LEFT)
      {
        frogX = frogX-5;
      }
   }
  if(frogX<=5 || frogX>=495){
    frogX = 250;
    frogY = 450;
  }
  if(frogY<=5 || frogY>=495){
    frogX = 250;
    frogY = 450;
  }
}
class car{
  int carX=0;
  int carY = 0;
  int size = 0;
  int speed = 0;
  car(int x, int y, int size, int speed){
   carX = x;
   carY = y;
  this.size = size;
 this.speed = speed; 
  }
}
