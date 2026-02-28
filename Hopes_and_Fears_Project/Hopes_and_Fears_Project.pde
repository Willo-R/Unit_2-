int x = 0;
int s = 20;

void setup() {
  size(900, 900);
}

void draw() {
  background(220);
  
  // top audience area
  fill(70, 70, 70);
  rect(0, 0, 900, 300);
  
  // red aisle (middle)
  fill(180, 30, 30);
  rect(0, 300, 900, 300);
  
  // bottom audience area
  fill(70, 70, 70);
  rect(0, 600, 900, 300);
  
  // move figure forward
  x = x + 1;
  
  drawFigure(x, 450, s);
}

void drawFigure(int x, int y, int s) {
  pushMatrix();
  translate(x, y);
  ellipse(0, 0, s, s);
  line(0, s/2, 0, s*2);
  line(-s, s, s, s);
  line(0, s*2, -s, s*3);
  line(0, s*2, s, s*3);
  popMatrix();
}
