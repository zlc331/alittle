PImage img;
int r, g, b;
int i = 0;
int alpha = 255;

void setup() {
  size(500, 700);
  img = loadImage("strawberrycake.jpg");
}

void draw() {

  background(0);
  tint(r, g, b, alpha);
  image(img, 0, 0);
  tint(r, g, 0, alpha);
  image(img, 250, 0);
  tint(0, g, b, alpha);
  image(img, 0, 350);
  tint(r, 0, b, alpha);
  image(img, 250, 350);
}

void mousePressed() {
  i ++;
    if (i % 4 == 1) {
      r = 100;
      
    } else if (i % 4 == 2) {
      g = 100;
      
    } else if (i % 4 == 3) {
      b = 100;
      
    } else {
      r = g = b = 255;
    }
}


void keyPressed(){
    if(key == 'r'){
        r += 5;
    } else if(key == 'g'){
        g += 5;
    } else if(key == 'b'){
        b += 5;
    } else{
        alpha = int( random(150, 255));
    }
}
