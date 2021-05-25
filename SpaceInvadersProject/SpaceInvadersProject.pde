//ArrayList<Invader> invaders;
//ArrayList<Barrier> walls;
Player player;
void setup(){
  background(0);
  size(672,768);
  player = new Player();
}

void draw(){
  reset();
  player.animate();
  
}

void keyPressed(){
  boolean right = key == 'a';
  boolean left = key == 's';
  player.moveKey(left,right);
  
}

void reset(){
  background(0);
}
