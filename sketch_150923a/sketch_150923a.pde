void setup(){
  size(1000,1000); 
}
void draw(){
  for(int i = 6; i > 0;i--){
    if(i%2==0){
   fill(255,255,255);
  }
  if(i%2==1){
  fill(219, 18, 18);
  }
    ellipse(500, 500, i*150, i*150);
}
fill(255,255,255);
text("1000", 500, 500);
text("300", 500, 700);
text("100", 500, 850);
fill(219, 18, 18);
text("500", 500, 620);
text("200", 500, 780);
text("50", 500, 920);
fill(0,0,0);
 if (mousePressed){
 ellipse(mouseX, mouseY, 25, 25);
}
}

