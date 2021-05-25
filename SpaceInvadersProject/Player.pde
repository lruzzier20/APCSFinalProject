public class Player extends Entity{
  private int speed = 10;
  private int size = 100;
  
  
  public Player(){
    super(100,(height-100),true);
    super.rateLimit = 1000;
  }
  
  protected void figure(){
    rectMode(CENTER);
    rect(super.x,super.y,size,size/2);
  }
  
  protected void move(){
    if(x-size/2<0){super.x=0+size/2;}
    if(x+size/2>=width){super.x=width-size/2;}
    
    for(int rocket = 0; rocket < super.currentFired.size();rocket++){
      currentFired.get(rocket).animate();
    }
  }
  
  public void moveKey(boolean left, boolean right){
    if(left) super.x += speed;
    if(right) super.x += -speed;
  }
  
}
