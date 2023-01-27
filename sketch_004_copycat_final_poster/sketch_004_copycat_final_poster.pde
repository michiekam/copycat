PImage img;
PFont roboto;
int x, y, fontSize;

void setup() {
  size(800,800);
  img = loadImage("cat.bmp");
  x = int(random(0,500)); 
  y = int(random(0,300)); 
}

void draw() {
   image(img,mouseX,mouseY,width/2,height/2);
   
   for(int i=0; i<22; i+=2) {
      pushMatrix();
      fill(255);
      noStroke();
      rect(x,y+i*i,300,100);
      fontSize = 100;
      roboto = createFont("Roboto-Bold.ttf", fontSize); 
      fill(0);
      textFont(roboto);
      String text = "MEOW";
      text(text, x, y+i*i, 500, 300);
      popMatrix();
   }
 
}

void keyPressed() {
   if(key == 's') {
     saveFrame("poster/poster###.jpg");
   } 
}
