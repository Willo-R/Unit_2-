int y = 850;
int s = 20;

void setup() {
  size(900, 900);
  
}
  
void draw() {
  // dark background
  background(30,30,50);
  
 
  // left seating area
  fill(#868384);
  noStroke();
  rect(0, 0, 300, 900);
  fill(0,0,255);
  rect(
  
  // right seating area
  fill(#868384);
  noStroke();
  rect(600, 0, 300, 900);
  
  // red aisle in center
  fill(180, 30, 30);
  noStroke();
  rect(300, 0, 300, 900);
  
  // stage at the top
  fill(80, 60, 40);
  noStroke();
  rect(150, 0, 600, 150);
  
  // move figure up, stop at stage
  if (y > 165) {
    y = y - 5;
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
