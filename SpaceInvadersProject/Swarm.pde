public class Swarm{
  private ArrayList<Invader> members;
  private Game game;
  public Swarm(Game game){
    this.game = game;
    members = new ArrayList<Invader>();
    formation();
  }
  
  public void swapSpeed(){
    for(Invader enemy:members){
      enemy.swap();
    }
  }
  
  public void addMember(float x, float y){
    members.add(new Invader(x,y,game));
  }
  
  public void animate(){
    for(Invader enemy : members){
      if(enemy.bump()){
        swapSpeed();
        break;
      }
      
    }
    for(Invader enemy : members){
      enemy.animate();
    }
  }
  
  public ArrayList<Invader> members(){
    return members;
  }
  
  public void setSwarm(){
     formation();
  }
  
  private void formation(){
    //for(int r = 0; r < 5; r++){
    //  for(int c = 0; c < 11; c++){
    //    addMember(200+(height-200)/11.0 * r,width/5.0 * c);
    //  }
    //}
    int horizontalBuffer = 350;
    int verticalBuffer = 100;
    for(int r = 0; r < 5; r++){
      for(int c = 0; c < 11; c++){
        addMember(horizontalBuffer/2+(width-horizontalBuffer)/5.0 * c,verticalBuffer/2+(height-verticalBuffer)/11.0*r);
      }
    }
  }
}
