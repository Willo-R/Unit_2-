int x;
int r;

void setup(){
  size(300,300);
  strokeWeight(2);
  x = 0;
  r = 1;
}

void draw() {
  background(255);
  circle(x,150,r);
  x = x + 5;
  r = r + 1;
  
  if(x > 350){
    x = -50;
    r = 1;
  }
} 
