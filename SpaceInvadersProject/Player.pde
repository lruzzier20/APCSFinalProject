public class Player extends Entity{
  private int speed = 5;
  
  public Player(){
    super(100,100);
  }
  
  protected void figure(){
    rect(super.x,super.y,10,10);
  }
  protected void move(){
  }
  
  public void moveKey(boolean left, boolean right){
    if(left) super.x += speed;
    if(right) super.x += -speed;
  }
  
}
