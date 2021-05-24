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
  boolean right = key == 97;
  boolean left = key == 115;
  player.moveKey(left,right);
}

void reset(){
  background(0);
}
