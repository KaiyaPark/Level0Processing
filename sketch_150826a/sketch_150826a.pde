void setup(){
size(1000, 1000);
fill(224, 191, 23);
ellipse(500, 500, 250, 250);
fill(232, 67, 21);
ellipse(500, 500, 225, 225);
fill(255, 248, 106);
ellipse(500, 500, 200, 200);
imageMode(CENTER);
}
void draw(){
 PImage candle = loadImage("candle.ppm.gif"); 
PImage Bday = loadImage("200_s.gif"); 
    if(mousePressed){
    image(candle, mouseX, mouseY, 50, 50); }
    if(keyPressed){
    image(Bday, 500, 500, 1000, 1000);
   
    }
}
