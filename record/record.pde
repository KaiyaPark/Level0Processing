import ddf.minim.*;
PImage pictureOfRecord;
int amountToRotate=0;
Minim minim;
AudioPlayer song;  
void setup(){
  pictureOfRecord= loadImage("record.png");
  size(pictureOfRecord.width, pictureOfRecord.height);
  minim = new Minim(this);  
  song = minim.loadFile("WorthIt.mp3", 512);
}
void draw(){
  rotateImage(pictureOfRecord, amountToRotate);
  image(pictureOfRecord, 0, 0);
  if(mousePressed){
  amountToRotate++;
  song.play();
  }
  else{
  song.pause();
  }
}    
  void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
      
}

