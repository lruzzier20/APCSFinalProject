//ArrayList<Invader> invaders;
//ArrayList<Barrier> walls;
Player player;
Game game;
ArrayList<Invader> enemies;
void setup(){
  background(0);
  size(672,768);
  player = new Player();
  enemies = new ArrayList<Invader>();
  enemies.add(new Invader(10,10));
  enemies.add(new Invader(80,10));
  game = new Game(player);
}

void draw(){
  reset();
  game.run();
  player.animate();
  for(Invader enemy : enemies){
    enemy.animate();
  }
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
