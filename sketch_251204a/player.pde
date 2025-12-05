class player {
  float x;
  float y;
  float gravity = 0.5;
  float maxY = 2000;

  player(float X, float Y) {
    x = X;
    y = Y;
  }

  void update() {

    if (y < maxY) {
      y += gravity;
    }

    float speed = 1.5;

    if (keyCode == LEFT) {
      x -= speed;
    }
    if (keyCode == RIGHT) {
      x += speed;
    }
  }

  void display() {
    rectMode(CENTER);
    noStroke();

    fill(255, 204, 0);
    ellipse(x, y, 50, 65);  

    fill(255);
    ellipse(x, y, 22, 22);

    fill(255, 204, 0);
    rect(x - 32, y + 5, 25, 10, 3);
    rect(x + 32, y + 5, 25, 10, 3);

    triangle(x - 30, y + 40, x + 30, y + 40, x, y + 15);
  }
}
