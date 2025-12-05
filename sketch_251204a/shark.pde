class shark {
  PVector pos; 
  PVector vel;    
  
  shark(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(2, 0); //pos
  }

  void update() {

    pos.add(vel);

 
    if (pos.x < 30 || pos.x > width - 30) {
      vel.x *= -1;  
    }
  }

  void display() {
    rectMode(CENTER);

    pushMatrix();
    translate(pos.x, pos.y);

    if (vel.x < 0) scale(-1, 1);

    noStroke();
    fill(150);
    rect(0, 0, 60, 22, 6);

    triangle(-25, 0, -35, -12, -35, 12);

    triangle(30, 0, 15, -8, 15, 8);

    triangle(0, 10, -10, -25, 10, -10);

    fill(220, 80, 80);
    ellipse(15, -4, 6, 6); //shark

    popMatrix(); 
  }
}
