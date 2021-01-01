function setup() {
  createCanvas(500, 500);
  background(255);
  f = loadFont("Roboto-Regular-48.vlw");
  frameRate(45);
}

function draw() {
  background(220);
  var a, b, x;
  a = 80;
  b = 7;
  x = int(random(-3, 3));

  translate(50, -80);
  rotate(radians(45-28));
  
  fill(0);

  beginShape();
  vertex(300, 110);
  vertex(193.93, 216.07);
  vertex(300, 322.132);
  vertex(406.07, 216.07);
  endShape();

  beginShape();
  //vertex(193.93, 216.07 + b);
  vertex(300 + b/4, 319.132 + b);
  vertex(406.07, 216.07 + b);
  vertex(406.07, 216.07 + a);
  vertex(300 + b/4, 323.132 + a);
  //vertex(193.93, 216.07 + a);
  endShape();

  beginShape();
  vertex(193.93, 216.07 + b);
  vertex(300 - b/2, 319.132 + b);
  //vertex(406.07, 216.07 + b);
  //vertex(406.07, 216.07 + a);
  vertex(300 - b/2, 322.132 + a);
  vertex(193.93, 216.07 + a);
  endShape();
  

  translate(-100, 160);
  rotate(radians(-45));
  textSize(88);

  //n
  fill(245, 62, 48);
  text('N', 175, 320);
  //x
  fill(93, 192, 89);
  text('X', 180, 388);
  //t
  fill(227, 94, 163);
  text('T', 255, 388);
  //e
  textSize(120);
  fill(246, 236, 51);
  text('e', 245 + x, 320 + x);
}