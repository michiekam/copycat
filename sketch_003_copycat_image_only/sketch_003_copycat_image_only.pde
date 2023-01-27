PImage img;

void setup() {
  size(800,800);
  img = loadImage("cat.bmp");   //photo to be in the same folder
}

void draw() {
   image(img,mouseX,mouseY,width/2,height/2);   //using mouse as interaction
}

void keyPressed() {
   if(key == 's') {
     saveFrame("poster/poster###.jpg");    //save frame into 'poster' folder
   } 
}
