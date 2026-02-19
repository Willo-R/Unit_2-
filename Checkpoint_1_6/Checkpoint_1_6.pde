int y1 = 0;
int y2 = 300;

void setup(){
  size(300, 300);
  strokeWeight(2);
}

void draw() {
  background(255);
  circle(75,y1,100);
  y1 = y1 + 1;
  circle(225,y2,100);
  y2 = y2 - 1;
  
  if(y1 > 350){
  y1 = -50;
  y2 = 350;
  }
}
