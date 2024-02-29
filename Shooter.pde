class Shooter extends Invader {
    int Health = 2;
    long mark, wait = 1200; 
    int teleportCount = 0;

    Shooter(float x, float y) {
        super(x, y);
        mark = millis();
    }
    @Override
    void display() {
        fill(245, 11, 32);
        ellipse(pos.x, pos.y, size.x, size.y);
    }

    @Override
    void update() {
        super.update();
        PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
        aim = aim.normalize().mult(8); 

        if(millis() - mark > wait) {
            mark = millis();
            _SM.spawn(new Bullet(pos, aim, team));
        }
    }
    void handleCollision(){
        Health -= 1;
        if(Health <= 0){
            _SM.destroy(this);
        }
    }
    int countOnScreenBullets(ArrayList<Bullet> bullets) {
    int count = 0;

    for (Bullet bullet : bullets) {
      if (bullet.pos.x >= 0 && bullet.pos.x <= width && bullet.pos.y >= 0 && bullet.pos.y <= height) {
        count++;
      }
    }
    return count;
  }
}