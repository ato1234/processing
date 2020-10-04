void keyPressed() {
  if (keyCode == ENTER) {
    saveFrame("screen-####.jpg");
  }
}

void setup() {
  size(1000, 1000);
  smooth();
  background(0, 0, 0);
  strokeWeight(2);
  stroke(255, 255, 255, 20);
  float centerx = width/2;
  float centery = height/2;
  float radius = 2000;

  float n = random(10);

  float bx = centerx, by = centery;

  for (float count = 0; count < 10; count++) {
    for (float ang = random(1) * 0.01; ang <= 2 * Math.PI; ang += 0.01) {
      float noise = noise(n);
      n += 0.01;
      strokeWeight(2 + noise*10);

      radius += 0.05;
      float x = centerx + radius * cos(ang) * (noise * 0.9 - 0.45);
      float y = centery + radius * sin(ang);
      line(bx, by, x, y);
      //bx = x;
      //by = y;
    }
  }
}
