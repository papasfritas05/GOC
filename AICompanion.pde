// class AICompanion extends Invader {
//     PVector target;
  
//     AICompanion(float x, float y) {
//       super(x, y);
//       target = new PVector(player.x, player.y); // assuming player is a global variable
//     }
  
//     void update() {
//       target.set(player.x, player.y); // update target to player's position
//       PVector direction = PVector.sub(target, pos); // calculate direction towards player
//       direction.normalize(); // normalize the direction
//       direction.mult(0.5); // adjust speed
//       vel.add(direction); // add direction to velocity
//       pos.add(vel); // add velocity to position
//     }
  
//     void display() {
//       fill(0, 255, 0); // green color for AI companion
//       ellipse(pos.x, pos.y, size, size); // draw the AI companion
//     }
//   }