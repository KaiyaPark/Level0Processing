int frogX = 250;
int frogY = 450;
car c = new car(34, 375, 10, 5);
car c2 = new car(524, 350, 12, 5);
car c3 = new car(25, 325, 34, 5);
car c4 = new car(4, 300, 40, 5);
car c5 = new car(127, 275, 39, 5);
car c6 = new car(2, 250, 49, 5);
car c7 = new car(666, 225, 70, 5);
car c8 = new car(420, 200, 160, 5);
car c9 = new car(324, 175, 120, 5);
car c10 = new car(167, 150, 30, 5);
car c11= new car(43, 125, 10, 5);
car c12= new car(50, 100, 50, 5);
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
  ellipse(frogX-10,frogY-9, 5, 5);
  ellipse(frogX+10,frogY-9, 5, 5);
  c.display();
  c2.display();
  c.moveLeft();
  c2.moveLeft();
  c3.display();
  c3.moveRight();
  c4.display();
  c4.moveRight();
  c5.display();
  c6.display();
  c5.moveRight();
  c6.moveLeft();
  c7.display();
  c7.moveLeft();
  c8.display();
  c8.moveRight();
  c9.display();
  c9.moveRight();
  c10.display();
  c10.moveLeft();
  c11.display();
  c11.moveLeft();
  c12.display();
  c12.moveLeft();
  if(intersects(c)||intersects(c2)||intersects(c3)||intersects(c4)||intersects(c5)||intersects(c6)||intersects(c7)||intersects(c8)||intersects(c9)||intersects(c10)||intersects(c11)||intersects(c12)){
    frogY = 450;
    println("jjlkj");
}
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      frogY = frogY-15;
      }
      else if(keyCode == DOWN)
      {
       frogY = frogY+15;
      }
      else if(keyCode == RIGHT)
      {
       frogX = frogX+15;
      }
      else if(keyCode == LEFT)
      {
        frogX = frogX-15;
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
static int colorChange=255;
class car{
  int b = 255;
  int carX = 0;
  int carY = 0;
  int size = 0;
  int speed = 0;
  car(int x, int y, int size, int speed){
   carX = x;
   carY = y;
  this.size = size;
  this.speed = speed; 
    frogger.colorChange = frogger.colorChange-17;
    b=frogger.colorChange;
    
  }
  int getX(){
   return carX;
  } 
  int getY(){
   return carY;
  }
  int getSize(){
    return size; 
  }
    void display() 
  {
    fill(255,187,b);
  
    rect(carX , carY,  size, 25);
  }
  void moveRight(){
    carX = carX+speed;
    if(carX >= 500){
     carX=0; 
    }
}
 void moveLeft(){
    carX = carX-speed;
    if(carX <= 0){
     carX=500; 
    }
}

}
boolean intersects(car car) {
if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}

