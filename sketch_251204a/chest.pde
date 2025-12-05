class chest {
  float x;
  float y;
  float w = 60;
  float h = 25;

  boolean taken = false; 

  chest(float X, float Y) {
    x = X;
    y = Y;
  }

  void respawn() {
    x = random(40, width - 40);
    y = random(300, 380);
  }

  void update() {}

  void display() {
    if (taken) return;

    rectMode(CENTER);
    noStroke();
    fill(255, 150, 0);  
    rect(x, y, w, h, 10);

    fill(255);
    rect(x, y - 2, 4, 10, 2);
  }

  boolean touch(player p) {
    float d = dist(x, y, p.x, p.y);
    return d < 40;
  }
}
