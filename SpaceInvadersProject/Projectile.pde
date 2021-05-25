public class Projectile extends Cow{
  int speed = 10;
  public Projectile(float x,float y,boolean isFriendly){
    super(x,y,isFriendly);
  }
  
  public void move(){
    if(isFriendly){
      y -= 10;
    }
    else{
      y += 10;
    }
  }
  
  public void figure(){
    rect(x,y,3,3);
  }
  
}
