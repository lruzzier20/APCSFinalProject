public class BarrierPixel extends Cow{
  public BarrierPixel(float x,float y,Game game){
    super(x,y,3,game); 
  }
 public void figure(){
  
  }
  
  public boolean inArea(float otherx, float othery){
    return true;
  }
  
  public void move(){
  }
  
  public void kill(){
    die();
  }
  
  public void hit(){}
  
}
