//ArrayList<Invader> invaders;
//ArrayList<Barrier> walls;
Player player;
Game game;
Swarm enemies;
void setup(){
  background(0);
  size(672,768);
  player = new Player();
  enemies = new Swarm();
  enemies.addMember(10,10);
  enemies.addMember(80,10);
  game = new Game(player);
}

void draw(){
  reset();
  game.run();
  player.animate();
  enemies.animate();
}

void keyPressed(){
  boolean right = key == 's';
  boolean left = key == 'a';
  game.press(new boolean[]{right,left});
  
  if(key == ' '){
    player.fire();
  }
}

void keyReleased(){
  boolean right = key == 's';
  boolean left = key == 'a';
  game.release(new boolean[]{right,left});
}

void reset(){
  background(0);
}
