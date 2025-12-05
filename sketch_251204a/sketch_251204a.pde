player player;
shark shark;
shark[] sharks;
jelly jelly;
sub sub;
int sharkCount = 2;
chest chest;
void setup() {
  size(400, 400);
  player = new player(180, 60);
  jelly = new jelly (125,100);
  sub = new sub(60, 360);
  chest = new chest(260, 360);
  sharks = new shark[sharkCount];
  for (int i = 0; i < sharkCount; i++) {
    sharks[i] = new shark(random(200, 350), random(200, 300));
  }
}

void draw() {
  background(0, 20, 50);

  player.update();
  player.display();

jelly.update();
jelly.display();

sub.update();
sub.display();

chest.update();
chest.display();
if (!chest.taken && chest.touch(player)) {
    chest.taken = true;
    println("good, press R to repeat");
  }

  for (int i = 0; i < sharkCount; i++) {
    sharks[i].update();
    sharks[i].display();
    
  }
}
