public class Swarm{
  private ArrayList<Invader> members;
  
  public Swarm(){
    members = new ArrayList<Invader>();
  }
  
  public void swapSpeed(){
    for(Invader enemy:members){
      enemy.swap();
    }
  }
  
  public void addMember(int x, int y){
    members.add(new Invader(x,y));
  }
  
  public void animate(){
    for(Invader enemy : members){
      if(enemy.bump()){swapSpeed();}
    }
    for(Invader enemy : members){
      enemy.animate();
    }
  }
}
