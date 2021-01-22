class Particle{
  PVector pos,rad;
  float dim,h,s,b;
  Particle(){
    rad = new PVector(random(2*PI), random(2*PI));  
    pos = new PVector();
    dim = 200;
  }
  
  void move(){
    update();
    display();
  }
  
  void update(){

    pos.x = dim*sin(rad.x)*cos(rad.y);
    pos.y = dim*cos(rad.x)*cos(rad.y);
    pos.z = dim*sin(rad.y);
  }
  
  void display(){
    noStroke();
    fill(40, 12, 75, 80);
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    sphere(12); 
    popMatrix();
  }
}
