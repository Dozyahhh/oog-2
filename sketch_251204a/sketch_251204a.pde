player player;
shark shark;
shark[] sharks;
jelly jelly;
sub sub;
int sharkCount = 2;
chest chest;

boolean gameOver = false;

float buttonWidth  = 160;
float buttonHeight = 40;
float buttonX;
float buttonY;

void setup() {
  size(400, 400);
  
  buttonX = width/2 - buttonWidth/2;
  buttonY = height/2 + 10;

  player = new player(180, 60);
  jelly  = new jelly(125, 100);
  sub    = new sub(60, 360);

  chest = new chest(0, 0);
  chest.respawn();

  sharks = new shark[sharkCount];
  for (int i = 0; i < sharkCount; i++) {
    sharks[i] = new shark(random(200, 350), random(200, 300));
  }
}

void draw() {
  background(0, 20, 50);

  if (!gameOver) {
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
      gameOver = true;
    }

    for (int i = 0; i < sharkCount; i++) {
      sharks[i].update();
      sharks[i].display();

      if (dist(player.x, player.y, sharks[i].pos.x, sharks[i].pos.y) < 35) {
        gameOver = true;
      }
    }

    if (dist(player.x, player.y, jelly.pos.x, jelly.pos.y) < 35) {
      gameOver = true;
    }

    if (dist(player.x, player.y, sub.x, sub.y) < 45) {
      gameOver = true;
    }

  } else {

    background(0, 20, 50);

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(26);
    text("GAME OVER", width/2, height/2 - 40);

    rectMode(CORNER);
    fill(255);
    rect(buttonX, buttonY, buttonWidth, buttonHeight, 8);

    fill(0);
    textSize(16);
    text("Start again", width/2, buttonY + buttonHeight/2);
  }
}

void mousePressed() {
  if (gameOver) {
    if (mouseX > buttonX && mouseX < buttonX + buttonWidth &&
        mouseY > buttonY && mouseY < buttonY + buttonHeight) {
      restartGame();
    }
  }
}

void restartGame() {
  player.x = 180;
  player.y = 60;

  chest.taken = false;
  chest.respawn();

  gameOver = false;
}
