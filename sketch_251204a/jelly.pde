class jelly {
  PVector pos;
  PVector vel;

  float bodyW = 30;
  float bodyH = 35;

  jelly(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(1, 0);
  }

  void update() {
    pos.add(vel);

    if (pos.x < 20 || pos.x > width - 20) {
      vel.x *= -1;
    }
  }

  void display() {
    float legOffset = sin(frameCount * 0.1) * 4;

    noStroke();
    fill(200, 150, 255);
    ellipse(pos.x, pos.y, bodyW, bodyH);

    stroke(200, 150, 255);
    strokeWeight(3);

    line(pos.x - 10, pos.y + 10, pos.x - 10, pos.y + 30 + legOffset);
    line(pos.x - 3,  pos.y +  8, pos.x - 3,  pos.y + 30 + legOffset);
    line(pos.x + 3,  pos.y +  8, pos.x + 3,  pos.y + 30 + legOffset);
    line(pos.x + 10, pos.y + 10, pos.x + 10, pos.y + 30 + legOffset); 
  }
}
