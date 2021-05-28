public class Swarm{
  private ArrayList<Invader> members;
  Game game;
  public Swarm(Game game){
    this.game = game;
    members = new ArrayList<Invader>();
  }
  
  public void swapSpeed(){
    for(Invader enemy:members){
      enemy.swap();
    }
  }
  
  public void addMembers(){
    members.add(new Invader(game));
  }
  
  public void animate(){
    for(Invader enemy : members){
      if(enemy.bump()){swapSpeed();}
    }
    for(Invader enemy : members){
      enemy.animate();
    }
  }
  
  public ArrayList<Invader> members(){
    return members;
  }
}
