class BigBullet extends Sprite {
    int Health = 5;

    @Override
    void display() {
        fill(204, 102, 0);
        ellipse(pos.x, pos.y, size.x, size.y);
    }
    
    BigBullet(float x, float y, PVector velocity, int team) {
        super(x, y, 30, 30); // invoke parent constructor
        vel = velocity;
        this.team = team;
    }

    BigBullet(PVector pos, PVector vel, int team) {
        // constructor chaining
        this(pos.x, pos.y, vel, team); // invoke another own constructor
        // this refers to the above on line 3
    }
    
    @Override
    void update() {
        pos.add(vel);
    }

    void handleCollision(){
        Health -= 1;
        if(Health <= 0){
            _SM.destroy(this);
        }
    }
}
