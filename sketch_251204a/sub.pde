class sub {
  float x;
  float y;

  float speed = 2;

  sub(float X, float Y) {
    x = X;
    y = Y;
  }

  void update() {
    x += speed;

    if (x > width + 60) { 
      x = -60; 
    }
  }

  void display() {
    rectMode(CENTER);

    noStroke();
    fill(255, 230, 120);
    rect(x, y, 100, 30, 10);

    triangle(x - 40, y, x - 65, y - 15, x - 65, y + 15);

    stroke(0);
    strokeWeight(2);
    fill(255);

    ellipse(x - 20, y, 13, 13);
    ellipse(x, y, 13, 13);
    ellipse(x + 20, y, 13, 13);
  }
}
