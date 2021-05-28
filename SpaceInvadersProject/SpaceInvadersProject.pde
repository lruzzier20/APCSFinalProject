//ArrayList<Invader> invaders;
//ArrayList<Barrier> walls;
Player player;
Game game;
ArrayList<Swarm> enemies;
ArrayList<Barrier> barriers;
void setup(){
  background(0);
  size(672,768);
  game = new Game();
  player = new Player(game);
  game.setPlayer(player);
  enemies = new ArrayList<Swarm>();
  enemies.add(new Swarm(game));
  enemies.get(0).addMember(10,10);
  enemies.get(0).addMember(80,10);
  barriers = new ArrayList<Barrier>();
  for(int i = 0; i < 4; i++){
    barriers.add(new Barrier(i * width/4, 700,game));
  }
  
}

void draw(){
  reset();
  game.run();
  player.animate();
  for(int i = 0; i < enemies.size();i++){
    enemies.get(i).animate();
  }
  
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
