class Brawler extends Sprite {
    int Health = 4;
    // constructor
    Brawler(float x, float y) {
        super(x, y, 40, 40);
        vel = new PVector(5, 15); // moving right
    }

    @Override
    void display() {
        fill(245, 11, 32);
        ellipse(pos.x, pos.y, size.x, size.y);
    }
    
    @Override // change directions left and right
    void update() {
        pos.add(vel);
        
        if (pos.x < 0 || pos.x > width) {
            vel.x *= -1;
        }
        if (pos.y < 0 || pos.y > height) {
            vel.y *= -1;
        }
    }
    void handleCollision(){
        Health -= 1;
        if(Health <= 0){
            _SM.destroy(this);
        }
    }
}