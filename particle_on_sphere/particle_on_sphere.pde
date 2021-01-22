ArrayList<Particle> particles;
PVector Rotate;
Particle tempP;
float h = 40;

void setup() {
  size(1080,680,P3D);
  colorMode(HSB, 360, 100, 100, 100);
  Rotate = new PVector();
  particles = new ArrayList<Particle>();
  for(int i = 0; i < 80; i++) {
    particles.add(new Particle());
  }
  background(255);
}

void draw() {

  noStroke();
  fill(0, 10);
  rect(0,0,width,height);  
  

  Rotate = new PVector(mouseX*0.005, mouseY*0.005, frameCount*0.01);
  pushMatrix();
  translate(width/2, height/2);
  rotateX(Rotate.x);
  rotateY(Rotate.y);
  rotateZ(Rotate.z);

  for(int i = particles.size()-1; i >= 0; i--) {
    tempP = particles.get(i);
    tempP.move();
  }
  popMatrix();
}

void mousePressed(){
  particles = new ArrayList<Particle>();
  for(int i = 0; i < 80; i++){
    particles.add( new Particle() );
  }

}
