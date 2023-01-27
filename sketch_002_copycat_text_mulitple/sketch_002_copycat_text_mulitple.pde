PFont roboto;
int x, y, fontSize;

void setup() {
  size(800, 800);
  x = int(random(0,300)); //set random x-coordinate btw 0 to 300 pixels
  y = int(random(0,300)); //set random y-coordinate btw 0 to 300 pixels
}

void draw() {
 background(255);
 for(int i=0; i<22; i+=2) {
    pushMatrix();
    fill(255);
    noStroke();
    rect(x,y+i*i,460,100);   // i*i formula to create the staggered spacing
    fontSize = 100;
    roboto = createFont("Roboto-Bold.ttf", fontSize);   //font file needs to be in the same folder
    fill(0);
    textFont(roboto);
    String text = "COPYCAT";
    text(text, x, y+i*i, 500, 300);   //width:500, height:300
    popMatrix();
 }
}
