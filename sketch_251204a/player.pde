class player {
  float x;
  float y;
  float vy = 0;
  float gravity = 0.002;
  
  player(float X, float Y) {
    x = X;
    y = Y;
  }

  void update() {
    float speed = 2.5;

    if (keyCode == LEFT) {
      x -= speed;
    }
    if (keyCode == RIGHT) {
      x += speed;
    }

    vy += gravity;
    y += vy;

    if (y > height - 50) {
      y = height - 50;
      vy = 0;
    }
  }

  void display() {
    rectMode(CENTER);
    noStroke();
    
    fill(255, 204, 0);
    ellipse(x, y, 30, 40);  
    
    fill(255, 255, 255);
    ellipse(x, y, 15, 15);
   
    fill(255, 204, 0);
    rect(x - 20, y + 3, 18, 7, 3);
    rect(x + 20, y + 3, 18, 7, 3);
    
    fill(255, 204, 0);
    triangle(x - 20, y + 28, x + 20, y + 28, x, y + 12);
  }
}
