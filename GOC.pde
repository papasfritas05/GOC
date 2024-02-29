SpriteManager _SM;


void setup() {
    size(1024, 768);
    _SM = new SpriteManager();
    _SM.spawn(new Shooter(250, 50));
    _SM.spawn(new Shooter(150, 100));
    _SM.spawn(new BigBoy(250, 100));
    _SM.spawn(new Brawler(0, 100));
    _SM.spawn(new Shooter(150, 0));
    //_SM.spawn(new AICompanion(10, 0));
}

void draw() {
  int bulletCount = shooter.countOnScreenBullets(bullets);
    background(0);
    _SM.manage();
    Shooter shooter = // ... get your Shooter instance ...
  ArrayList<Bullet> bullets = // ... get your Bullet list ...

  

  fill(255); // Set text color to white
  textSize(32); // Set text size to 32 pixels
  text("Bullets: " + bulletCount, 10, 50); // Display bullet count at position (10, 50)
    if ((_SM.active.size() == 1) || _SM.player.Health == 0) {
    showEndScreen();
  }
}

void keyPressed() {
    _SM.player.keyDown();
}

void keyReleased() {
    _SM.player.keyUp();
}

void showEndScreen() {
  background(0); // clear the screen
  fill(255); // set fill color to white
  textSize(32); // set text size
  textAlign(CENTER, CENTER); // align text to center
  text("Game Over", width / 2, height / 2); // display game over message
  noLoop(); // stop the game loop
}