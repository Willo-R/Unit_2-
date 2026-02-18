int y = 0;

void setup(){
  size(300, 300);
  strokeWeight(2);
}

void draw() {
  background(255);
  circle(150,y,100);
  y = y + 1;
  
  if(y > 350){
  y = -50;
  }
}
