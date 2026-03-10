int y = 850;
int s = 20;
float posY1 = 30;
float posY2 = 40;
int count;

PFont font;


void setup() {
  size(900, 900);
  font = createFont("KGPerfectPenmanship.ttf", 50);
}
  
void draw() {
  
  // left seating area
  fill(#BCA522);
  noStroke();
  rect(0, 0, 300, 900);
  fill(0);
  benchLeft(300);
  benchLeft(500);
  benchLeft(700);
  
  // right seating area
  fill(#BCA522);
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
  fill(255);
  stroke(0);
  rect(150, 0, 600, 150);
  
  //font
  fill(0);
  textFont(font);
  textSize(45);
  text("Congratulations, Dr. Willow!", 170, 90);

  // move figure up, stop at stage
  if (y > 190) {
    y = y - 5;
  }
  
  else if(count < 80){
    count = count + 1;
  }
  
  if(count > 0 && count < 55){
    posY1 = posY1 - 0.5;
    posY2 = posY2 - 0.5;
  }
  
  //receives hat
  if(count == 80){
    hat();
  }
  
  stroke(0);
  strokeWeight(2);
  drawFigure(450, y, s);
  drawProfessor(370, 190, posY1, posY2);
  hatProf(-80, 0);
  audiencePerson(67, 270);
  audiencePerson(67, 470);
  audiencePerson(67, 670);
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
  stroke(0);
  quad(433, 170, 450, 160, 467, 170, 450, 180);
  line(445, 180, 446, 175);
  line(454, 175, 455, 180);
  stroke(255, 215, 0);
  line(453, 169, 465, 175);
  line(465, 176, 465, 183);
  line(465, 176, 462, 183);
  line(465, 176, 468, 183);
}

void hatProf(int x, int y){
  pushMatrix();
  translate(x,y);
  fill(0);
  stroke(0);
  quad(433, 170, 450, 160, 467, 170, 450, 180);
  line(445, 180, 446, 175);
  line(454, 175, 455, 180);
  stroke(#FF5560);
  line(453, 169, 465, 175);
  line(465, 176, 465, 183);
  line(465, 176, 462, 183);
  line(465, 176, 468, 183);
  popMatrix();
}

void drawProfessor(int x, int y, float posY1, float posY2) {
  pushMatrix();
  fill(255,204,153);
  translate(x, y);
  ellipse(0, 0, 20, 20);
  fill(#2A38C6);
  triangle(0, 10, -20, 60, 20, 60);
  line(-5, 60, -5, 65);
  line(5, 60, 5, 65);
  
  line(6, 20, 25, posY1);
  line(10, 30, 27, posY2);
  popMatrix();
}

void audiencePerson(int x, int y){
  pushMatrix();
  translate(x, y);
  for (int i = 0; i < 5; i++) {
    pushMatrix();
    translate(i * 40, 0);
    // head
    ellipse(0, 0, 15, 15);
    // body
    line(0, 7, 0, 30);
    // arms
    line(-15, 15, 15, 15);
    // legs bent forward (sitting)
    //line(-5, 30, -15, 30);
    //line(5, 30, 15, 30);
    popMatrix();
  }
  popMatrix();
}
 
