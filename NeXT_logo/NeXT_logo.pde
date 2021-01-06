PFont f;

void setup() {
  size(500, 500);
  background(255);
  f = loadFont("Roboto-Regular-48.vlw");
  frameRate(45);
}

void draw() {
  float a, b, x;
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

  String s1 = "N";
  String s2 = "e";
  String s3 = "X";
  String s4 = "T";

  translate(-100, 160);
  rotate(radians(-45));
  textFont(f, 88);

  //n
  fill(#f53e30);
  text(s1, 175, 320);
  //x
  fill(#5dc059);
  text(s3, 180, 388);
  //t
  fill(#e35ea3);
  text(s4, 255, 388);
  //e
  textFont(f, 120);
  fill(#f6ec33);
  text(s2, 245 + x, 320 + x);



  //#f53e30
  //#f6ec33
  //#5dc059
  //#e35ea3
}
