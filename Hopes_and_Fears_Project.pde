int y = 850;
int s = 20;

void setup() {
  size(900, 900);
  
}
  
void draw() {
  
  // left seating area
  fill(#3137C4);
  noStroke();
  rect(0, 0, 300, 900);
  fill(0);
  benchLeft(300);
  benchLeft(500);
  benchLeft(700);
  
  // right seating area
  fill(#3137C4);
  noStroke();
  rect(600, 0, 300, 900);
  fill(0);
  benchRight(300);
  benchRight(500);
  benchRight(700);
  
  // red aisle in center
  fill(180, 30, 30);
  noStroke();
  rect(300, 0, 300, 900);
  
  // stage at the top
  fill(80, 60, 40);
  noStroke();
  rect(150, 0, 600, 150);
  
  // move figure up, stop at stage
  if (y > 190) {
    y = y - 5;
  }
  if(y == 190) {
   fill(0);
  line(445, 180, 446, 175);
  line(454, 175, 455, 180);
  ellipse(450, 170, 30, 10);
  }
  
  stroke(0);
  strokeWeight(2);
  drawFigure(450, y, s);
  
}

void drawFigure(int x, int y, int s) {
  pushMatrix();
  fill(255,204,153);
  translate(x, y);
  ellipse(0, 0, s, s);
  line(0, s/2, 0, s*2);
  line(-s, s, s, s);
  line(0, s*2, -s, s*3);
  line(0, s*2, s, s*3);
  popMatrix();
}

void benchLeft(int y){
  rect(50, y, 200, 15);
}

void benchRight(int z){
  rect(650, z, 200, 15);
}

void hat(){
  
  fill(0);
  line(445, 180, 446, 175);
  line(454, 175, 455, 180);
  ellipse(450, 170, 30, 10);
 
}
 
