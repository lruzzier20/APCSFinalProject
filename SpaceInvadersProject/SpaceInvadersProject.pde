//ArrayList<Invader> invaders;
//ArrayList<Barrier> walls;
Player player;
Game game;
Swarm enemies;
//ArrayList<Barrier> barriers;
ArrayList<BarrierBlock> barriers;

ArrayList<Explosion> explosions;
long counter=0;
void setup(){
  background(0);
  size(672,768);
  game = new Game();
  player = new Player(game);
  game.setPlayer(player);
  enemies = new Swarm(game);
  //barriers = new ArrayList<Barrier>();
  //for(int i = 0; i < 4; i++){
  //  barriers.add(new Barrier(50+i * width/4, 650,game));

  //}
  barriers = new ArrayList<BarrierBlock>();
  for(int i = 0; i < 4; i++){
    barriers.add(new BarrierBlock(50+i * width/4, 650,game));

  }
  
  
}

void draw(){
  if(game.gameRunning()){
    reset();
    game.run();
    player.animate();
    enemies.animate();
  
    for(int i = 0; i < barriers.size();i++){
      barriers.get(i).animate();
    }
    
    if(enemies.invadersDead()){
      enemies.nextSwarm();
      for(int i = 0; i < barriers.size();i++){
      barriers.get(i).revive();
    }
    }

  }
  else if(counter==0){fill(0); rect(50,30,10,10); fill(color(0,255,0)); text("0",50,40); counter++;}
  else{gameOver();}
}

void keyPressed(){
  boolean right = key == 's';
  boolean left = key == 'a';
  game.press(new boolean[]{right,left});
  if(key == ' '){
    player.fire();
  }
  if(key == ENTER && counter>300){
    setup();
    counter=0;
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

void gameOver(){
  textSize(50);
  fill(color(255,0,0));
  if(counter==1){text("G", 150,45);}
  if(counter==10){text("A", 190,45);}
  if(counter==20){text("M", 225,45);}
  if(counter==30){text("E", 270,45);}
  if(counter==50){text("O", 390,45);}
  if(counter==60){text("V", 430,45);}
  if(counter==70){text("E", 470,45);}
  if(counter==80){text("R", 505,45);}
  if(counter==200){background(255);}
  if(counter==230){background(0);}
  if(counter==260){background(255);}
  if(counter==290){background(0);}
  fill(255);
  textSize(30);
  if(counter==300){text("PRESS 'ENTER' TO PLAY AGAIN",100,400);}
  textSize(12);
  counter++;
}
