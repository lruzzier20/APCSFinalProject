public class Swarm{
  private ArrayList<Invader> members;
  private Game game;
  private long cycleCounter = 0;
  private long cycle = 1000;
  private int round = 1;
  public Swarm(Game game){
    this.game = game;
    game.setSwarm(this);
    members = new ArrayList<Invader>();
    setSwarm();
  }
  
  private void swapSpeed(){
    for(Invader enemy:members){
      enemy.swap();
    }
  }
  

  private void addMember(float x, float y, int type){
    members.add(new Invader(type,x,y,game));
  }
  
  public void animate(){
    //System.out.println(members.size());
    for(int i=0;i<members.size();i++){
      if(members.get(i).bump()){
        swapSpeed();
        break;
      }
      if(members.get(i).isDead){
        members.remove(i); 
        if(members.size()>20){accelerate(0.01 * round);}
        else if(members.size()>5){accelerate(0.1 * round);}
        else{accelerate(1 * round/2);}
      }
    }
    for(int i=0;i<members.size();i++){
      members.get(i).animate();
    }
    cycle();
    if(invadersDead()){
      nextSwarm();
    }
  }
  
  public ArrayList<Invader> members(){
    return members;
  }
  
  private void setSwarm(){
     formation();
  }
  
  private void formation(){
    //for(int r = 0; r < 5; r++){
    //  for(int c = 0; c < 11; c++){
    //    addMember(200+(height-200)/11.0 * r,width/5.0 * c);
    //  }
    //}
    int horizontalBuffer = 200;
    int verticalBuffer = 400;
    int rows = 5;
    int cols = 11;
    for(int r = 0; r < rows; r++){
      for(int c = 0; c < cols; c++){
        if(r==0){addMember(horizontalBuffer/2+(width-horizontalBuffer)/cols * c,50+(height-verticalBuffer)/rows*r, 2);}
        else if(r==1){addMember(horizontalBuffer/2+(width-horizontalBuffer)/cols * c,50+(height-verticalBuffer)/rows*r, 1);}
        else {addMember(horizontalBuffer/2+(width-horizontalBuffer)/cols * c,50+(height-verticalBuffer)/rows*r, 0);}
      }
    }
    }
  private void shoot(){
    if(members.size()!=0){
    int chosenOne = (int)(Math.random() * members.size());
    members.get(chosenOne).fire();}
  }
  
  private void cycle(){
    if(System.currentTimeMillis()-cycleCounter > cycle){
      shoot();
      cycleCounter = System.currentTimeMillis();
    }
  }
  
  private void accelerate(float amount){
    for(Invader enemy : members){
      if(enemy.getSpeed()>0){enemy.addSpeed(amount);}
      else{enemy.addSpeed(-1*amount);}
    }
  }
  
  public boolean invadersDead(){
    return members.size() == 0;
  }
  
  public void nextSwarm(){
    setSwarm();
    round++;
  }
  
  public boolean gameEnd(){
    for(int invader = 0; invader < members.size(); invader++){
        if(members.get(invader).coords()[1] > 600){
          return true;
        }
    }
    return false;
  }
  
}
