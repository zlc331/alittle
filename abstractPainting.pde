void setup() {
  size (300, 400);
  background(255, 253, 242);
  smooth(2);
}

void draw() {
  noStroke();
  rectMode(CENTER);

  //red
  fill(252, 43, 15, 70);
  rect(135, 230, 20, 340);
  rect(160, 170, 15, 280);

  fill(255, 0, 0);
  rect(150, 255, 180, 25);

  //blue
  fill(6, 54, 190);
  rect(155, 240, 160, 30);
  rect(160, 290, 140, 8);

  //vermilion
  fill(255, 111, 98);
  rect(150, 245, 250, 20);

  pushMatrix();
  translate(140, 140);
  rotate(-PI/10);
  rect(0, 0, 160, 8);
  popMatrix();

  //black
  fill(0);
  ellipse(100, 120, 30, 30);

  pushMatrix();
  translate(160, 200);
  rotate(PI/4);
  rect(0, 0, 140, 140);
  popMatrix();

  //text
  textSize(9);
  text("Ilja Chashnik, Composition, 1923a", 150, 380); 

  saveFrame("AbstractPainting.jpeg");
}
