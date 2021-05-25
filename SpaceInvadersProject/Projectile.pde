public class Projectile extends Cow{
  int speed = 10;
  public Projectile(float x,float y,boolean isFriendly){
    super(x,y,isFriendly);
  }
  
  //moves up or down depending on who shot it
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
  
  //checks if out of bounds
  public boolean dead(){
    return y < 0 || y > height;
  }
  
}
