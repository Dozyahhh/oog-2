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

  void update() {
    // логика сундука (анимация, и т.п.) при желании
  }

  void display() {
    if (taken) return; 

    rectMode(CENTER);

    noStroke();
    fill(0);  
    rect(x, y, w, h, 10);

    fill(255);
    rect(x, y - 2, 4, 10, 2);
  }

  boolean touch(player p) {
    float d = dist(x, y, p.x, p.y);
    return d < 40;
  }
}
