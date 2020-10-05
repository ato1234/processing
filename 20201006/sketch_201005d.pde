import processing.opengl.*;

color bg = #344148;
color[] colors = {#b1cba2, #f1e4b6, #de6d56};
float n = random(10);
float size = 100;
float w, h;

void keyPressed() {
  if (keyCode == ENTER) {
    saveFrame("screen-####.jpg");
  }
}

void setup() {

  size(1000, 800, OPENGL);
  smooth();
  noStroke();

  w = width / 5;
  h = height / 4;
  frameRate(1);
}

void draw() {
  background(bg);
  for (int x = 0; x < 5; x++) {
    for (int y = 0; y < 4; y++) {
      for (int i = 0; i < colors.length; i++) {
        rotateY(noise(n));
        n += 0.1;
        rotateX(noise(n));
        n += 0.1;

        fill(colors[i]);
        float px = w * x + (w-size)/2 + i * 10;
        float py =h * y + (h-size)/2 + i * 10;
        rect(px, py, size, size);
      }
    }
  }
}
