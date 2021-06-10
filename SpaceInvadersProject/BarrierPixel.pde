public class BarrierPixel extends Cow{
  private BarrierBlock block;
  public BarrierPixel(float x,float y,Game game, BarrierBlock block){
    super(x,y,3,game); 
    this.block = block;
  }
 public void figure(){
    fill(0,255,0);
    rect(x,y,2,2);
  }
  
  public boolean inArea(float otherx, float othery){
    return true;
  }
  
  public void move(){
    
  }
  
  public void kill(){
    die();
  }
  
  public void hit(){
    kill();
  }
  
  public void askNeighborsDie(){
    ArrayList<BarrierPixel> barrierBlock = new ArrayList<BarrierPixel>();
    for(int pixel = 0; pixel < barrierBlock.size(); pixel++){
      BarrierPixel current = barrierBlock.get(pixel);
      if(dist(current.x,current.y,this.x,this.y) < 5){
        if(Math.random() > 0.5){
          current.kill();
        }
      }
    }
  }
  
  
  
}
