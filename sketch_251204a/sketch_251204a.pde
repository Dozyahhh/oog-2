player player;
shark shark;
shark[] sharks;
int sharkCount = 4;

void setup() {
  size(400, 400);

  player = new player(180, 60);

  sharks = new shark[sharkCount];
  for (int i = 0; i < sharkCount; i++) {
    sharks[i] = new shark(random(50, 350), random(50, 350));
  }
}

void draw() {
  background(0, 20, 50);

  player.update();
  player.display();

  for (int i = 0; i < sharkCount; i++) {
    sharks[i].update();
    sharks[i].display();
  }
}
