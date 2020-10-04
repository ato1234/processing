
float cx, cy;
float size = 20;
float x = 0, y = 0;
float r = 0;
float n = random(10);

void setup() {
  size(1000, 1000);
  smooth();
  background(0, 0, 0);
  strokeWeight(1);
  stroke(255, 255, 255, 10);
  noFill();
  frameRate(1000);

  cx = width/2;
  cy = height/2;
}

void keyPressed() {
  if (keyCode == ENTER) {
    saveFrame("screen-####.jpg");
  }
}


void draw() {
  float ns = noise(n);
  translate(cx, cy);  
  rotate(r);
  float p = ns * size - size/2;
  rect(p * 0.5, p * 0.5, size, size);
  rect(p * 0.1, p * 0.1, size, size);
  size += 0.5;
  r += 0.1;
  n += 0.1;
}
