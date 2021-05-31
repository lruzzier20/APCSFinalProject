//ArrayList<Invader> invaders;
//ArrayList<Barrier> walls;
Player player;
Game game;
Swarm enemies;
ArrayList<Barrier> barriers;
void setup(){
  background(0);
  size(672,768);
  game = new Game();
  player = new Player(game);
  game.setPlayer(player);
  enemies = new Swarm(game);
  barriers = new ArrayList<Barrier>();
  for(int i = 0; i < 4; i++){
    barriers.add(new Barrier(i * width/4, 650,game));
  }
  
}

void draw(){
  reset();
  game.run();
  player.animate();
  enemies.animate();
  
  for(int i = 0; i < barriers.size();i++){
    barriers.get(i).animate();
  }
  
}

void keyPressed(){
  boolean right = key == 's';
  boolean left = key == 'a';
  game.press(new boolean[]{right,left});
  
  if(key == ' '){
    player.fire();
    enemies.shoot(1);
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
