PFont roboto;
int x, y, fontSize;

void setup() {
  size(800, 800);
  x = int(random(0,300)); 
  y = int(random(0,300)); 
}

void draw() {
 background(255);
 for(int i=0; i<22; i+=2) {
    pushMatrix();
    fill(255);
    noStroke();
    rect(x,y+i*i,460,100);
    fontSize = 100;
    roboto = createFont("Roboto-Bold.ttf", fontSize); 
    fill(0);
    textFont(roboto);
    String text = "COPYCAT";
    text(text, x, y+i*i, 500, 300);
    popMatrix();
 }
}
