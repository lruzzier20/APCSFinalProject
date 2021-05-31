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
    //System.out.println(members.size());
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
    int horizontalBuffer = 200;
    int verticalBuffer = 400;
    int rows = 5;
    int cols = 11;
    for(int r = 0; r < rows; r++){
      for(int c = 0; c < cols; c++){
        addMember(horizontalBuffer/2+(width-horizontalBuffer)/cols * c,50+(height-verticalBuffer)/rows*r);
      }
    }
    }
  public void shoot(int i){
    members.get(i).fire();
  }
}
