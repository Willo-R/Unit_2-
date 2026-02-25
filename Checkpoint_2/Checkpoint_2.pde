int monsterX;
int monsterX2;
int monsterAngle;

void setup() {
  size(900, 900);
  strokeWeight(2);
  monsterX2 = 700;
}

void draw() {
  
  background(255);
  monster(monsterX, 400);
  monster(monsterX2, 100);
  
  monsterX = monsterX + 10;
  monsterX2 += 10;
  //monsterAngle = monsterAngle + 5;
  if(monsterX > 1150){
    monsterX = -250;
  }
  
  if(monsterX2 > 1150){
    monsterX2 = -250;
  }
 
}

void monster(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  //ROTATION
 // rotate(radians(angle));

  // HORNS (draw first so they appear behind head)
  fill(#F5C842);
  stroke(0);
  triangle(-80, 20, -120, -80, -30, -20);   // left horn
  triangle(80, 20, 30, -20, 120, -80);       // right horn
  triangle(-10, 10, 0, -60, 10, 10);         // middle spike

  // BODY
  fill(#A2E367);
  stroke(0);
  ellipse(0, 300, 300, 325);

  // HEAD
  ellipse(0, 100, 320, 300);

  // ARMS
  ellipse(-195, 280, 100, 55);   // left arm
  ellipse(195, 280, 100, 55);    // right arm

  // LEFT FOOT
  fill(#A2E367);
  stroke(0);
  ellipse(-70, 460, 120, 65);

  // RIGHT FOOT
  ellipse(70, 460, 120, 65);


  // CHEEKS
  noStroke();
  fill(#E8A87C);
  ellipse(-100, 130, 60, 35);
  ellipse(100, 130, 60, 35);

  // MOUTH
  stroke(0);
  fill(#ED7375);
  ellipse(0, 190, 200, 120);

  // TONGUE
  fill(#FF8FA3);
  ellipse(0, 220, 90, 55);

  // TOP TEETH
  fill(255);
  triangle(-40, 135, -15, 160, 0, 130);
  triangle(0, 130, 15, 160, 40, 135);

  // BOTTOM TEETH
  fill(255);
  triangle(-40, 245, -15, 220, 0, 250);
  triangle(0, 250, 15, 220, 40, 245);

  // EYES
  fill(255);
  stroke(0);
  ellipse(-65, 60, 70, 70);
  ellipse(65, 60, 70, 70);

  // PUPILS
  fill(0);
  ellipse(-65, 60, 22, 22);
  ellipse(65, 60, 22, 22);
  
  popMatrix();
}
