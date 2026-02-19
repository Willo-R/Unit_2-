int x;
int y;

void setup(){
  size(300,300);
  strokeWeight(2);
  x = 0;
  y = 0;
}

void draw() {
  background(255);
  circle(x,y,100);
  x = x + 1;
  y = y + 1;
  
  if(x > 350 & y > 350){
    x = -50;
    y = -50;
  }
} 
