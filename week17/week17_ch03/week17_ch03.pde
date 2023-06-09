PImage horse,cat;
void setup(){
  size(600,600);
  horse = loadImage("horse.jpg");
  cat = loadImage("cat.jpg");
}
void draw(){
  background(255);
  image(horse,0,0,300,300);
  image(cat,x,y);
}
float x = 300, y = 0;
void mouseDragged(){
  x += (mouseX-pmouseX);
  y += (mouseY-pmouseY);
}
