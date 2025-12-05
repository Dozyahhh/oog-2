class player { //added player class
  float x;
  float y;
  float vy = 0;
  float vx = 0;
  float gravity = 0.002;
  float lift = -0.15;
  float push = 3;
  //input physics numbers
  player(float X, float Y) {
    x = X;
    y = Y;
  }

  void update() {
    float speed = 2.5;

    if (keyCode == LEFT)  vx = -speed;
    if (keyCode == RIGHT) vx = speed;
    if (keyCode == UP)    vy += lift; //movement

    x += vx;
    vy += gravity;
    y += vy;

    vx *= 0.9;

    if (x < 20) {
      x = 20;
      vx = push;
    }

    if (x > width - 20) {
      x = width - 20;
      vx = -push;
    }

    if (y > height - 50) {
      y = height - 50;
      vy = 0;
    }

    if (y < 30) {
      y = 30; 
      vy = 0;
    }
  }

  void display() {
    rectMode(CENTER);
    noStroke();
    
    fill(255, 204, 0);
    ellipse(x, y, 30, 40);  
    
    fill(255);
    ellipse(x, y, 15, 15);
   
    fill(255, 204, 0);
    rect(x - 20, y + 3, 18, 7, 3);
    rect(x + 20, y + 3, 18, 7, 3);
    
    fill(255, 204, 0);
    triangle(x - 20, y + 28, x + 20, y + 28, x, y + 12);
  } //ship
}
