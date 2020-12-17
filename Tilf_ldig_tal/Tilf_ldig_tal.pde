  float count = 0;
  float tilfaeldig = 3;
  int rectX;
  int rectY;
  int rectSize;


void setup() {
  size(640, 360);
  background(255);
  noStroke();
  frameRate(10);
  rectX = 200;
  rectY = 200;
  rectSize = 100;
 
}

void talTal(){
background(255);
textSize(32);
text("tal " +count, 100,100);
text("tilfældig tal " + floor(tilfaeldig),100,150);

fill(0);
rect(rectX,rectY,rectSize,rectSize);

}


void draw(){
  
count = millis();
tilfaeldig = ((count*count + 0.5*count))%37;

fill(0);
rect(rectX,rectY,rectSize,rectSize);

}


void mousePressed() {
  
  if (mousePressed && (mouseButton == LEFT) && mouseX > rectX && mouseX < rectX + rectSize && mouseY > rectY && mouseY < rectY + rectSize){
talTal();
  }
}
