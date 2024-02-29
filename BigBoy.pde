class BigBoy extends Sprite {
    int Health = 3;
    long mark, wait = 2200; // ms

    BigBoy(float x, float y) {
        super(x, y, 80, 80);
        mark = millis();
        vel = new PVector(10, 0);
    }

    @Override
    void display() {
        fill(245, 11, 32);
        ellipse(pos.x, pos.y, size.x, size.y);
    }
    
    @Override
    void update() {
        pos.add(vel); 
        super.update();
        PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
        aim = aim.normalize().mult(20); 
        if (pos.x < 0 || pos.x > width) {
            vel.x *= -1;

        if(millis() - mark > wait) {
            mark = millis();
            _SM.spawn(new BigBullet(pos, aim, team));

        }
        }
    }

    void handleCollision(){
        Health -= 1;
        if(Health <= 0){
            _SM.destroy(this);
        }

    }
}