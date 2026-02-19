int r;

void setup(){
  size(300,300);
  strokeWeight(2);
  r = 0;
}

void draw() {
  background(255);
  circle(150,150,r);
  r = r + 1;
  
  if(r > 425){
    r = 0;
  }
}
