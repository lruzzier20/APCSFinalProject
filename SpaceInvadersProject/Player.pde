public class Player extends Entity{
  private int speed = 100;
  private int size = 100;
  
  
  public Player(){
    super(100,100,true);
  }
  
  protected void figure(){
    rect(super.x,super.y,size,size/2);
  }
  protected void move(){
    if(x<=0){super.x=0;}
    if(x+size>=width){super.x=width-size;}
  }
  
  public void moveKey(boolean left, boolean right){
    if(left) super.x += speed;
    if(right) super.x += -speed;
  }
  
}
