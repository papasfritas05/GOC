class Shooter extends Invader {
    int Health = 2;
    long mark, wait = 1200; // ms

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
        aim = aim.normalize().mult(8); // turn this into a single unit vector, then increase its magnitude

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
}