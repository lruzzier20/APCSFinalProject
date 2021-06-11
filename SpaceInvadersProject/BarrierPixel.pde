public class BarrierPixel extends Cow{
  private BarrierBlock block;
  public BarrierPixel(float x,float y,Game game, BarrierBlock block){
    super(x,y,3,game); 
    this.block = block;
  }
   public void figure(){
    noStroke();
    fill(color(0,255,0));
    rectMode(CENTER);
    rect(x,y,3,3);
  }
  
  public boolean inArea(float otherx, float othery){
    return dist(otherx,othery,this.x,this.y) < 9;
  }
  
  public void move(){
    
  }
  
  public void kill(){
    die();
  }
  
  public void hit(){
    kill();
    askNeighborsDie();
  }
  
  public void askNeighborsDie(){
    ArrayList<BarrierPixel> barrierBlock = block.sendList();
    for(int pixel = 0; pixel < barrierBlock.size(); pixel++){
      BarrierPixel current = barrierBlock.get(pixel);
      if(dist(current.x,current.y,this.x,this.y) < 25){
        if(Math.random() > 0.8){
          current.kill();
        }
      }
    }
  }
  
  public void revive(){
    isDead = false;
  }
  
  
  
}
