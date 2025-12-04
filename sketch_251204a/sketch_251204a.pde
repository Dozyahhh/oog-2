player player;

void setup() {
  size(400, 400);
  player = new player(180, 60);
}

void draw() {
  background(0, 20, 50);
  player.update();
  player.display();
}
