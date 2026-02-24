int count;

void setup() {
  size(900,900);
  count = 0;
  strokeWeight(2);
}

void draw() {
  monster(450,200);
}


void monster(int x, int y) {
  translate(x, y);
 
  //head + body
  stroke(0);
  fill(#A2E367);
  ellipse(0, 300, 300, 325);
  
  //FACE
  fill(255);
  ellipse(55,230,60,60);
  ellipse(-55,230,60,60);
  fill(0);
  ellipse(55,230,10,10);
  ellipse(-55,230,10,10);
  //mouth
  fill(#ED7375);
  ellipse(0, 360, 200, 120);
  //tongue
 
}
