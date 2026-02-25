void setup() {
  size(900, 900);
  strokeWeight(2);
}

void draw() {
  background(255);
  monster(450, 200);
}

void monster(int x, int y) {
  translate(x, y);

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

  // LEFT CLAWS
  fill(#C8DCB8);
  triangle(-230, 260, -260, 248, -245, 278);
  triangle(-245, 270, -268, 265, -250, 292);
  triangle(-255, 283, -275, 288, -254, 305);

  // RIGHT CLAWS
  triangle(230, 260, 260, 248, 245, 278);
  triangle(245, 270, 268, 265, 250, 292);
  triangle(255, 283, 275, 288, 254, 305);

  // LEFT FOOT
  fill(#A2E367);
  stroke(0);
  ellipse(-70, 460, 120, 65);

  // RIGHT FOOT
  ellipse(70, 460, 120, 65);

  // LEFT FOOT CLAWS
  fill(#C8DCB8);
  triangle(-105, 458, -118, 445, -105, 475);
  triangle(-80, 465, -82, 450, -62, 465);
  triangle(-55, 460, -50, 445, -35, 460);

  // RIGHT FOOT CLAWS
  triangle(105, 458, 118, 445, 105, 475);
  triangle(80, 465, 82, 450, 62, 465);
  triangle(55, 460, 50, 445, 35, 460);

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
  triangle(-40, 155, -20, 125, 0, 155);
  triangle(0, 155, 20, 125, 40, 155);

  // BOTTOM TEETH
  fill(255);
  triangle(-30, 230, -15, 258, 5, 230);
  triangle(10, 230, 25, 258, 40, 230);

  // EYES
  fill(255);
  stroke(0);
  ellipse(-65, 60, 70, 70);
  ellipse(65, 60, 70, 70);

  // PUPILS
  fill(0);
  ellipse(-65, 60, 22, 22);
  ellipse(65, 60, 22, 22);
}
