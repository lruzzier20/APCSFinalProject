public abstract class Cow{
  protected float x;
  protected float y;
  protected boolean isFriendly;
  
  //isFriendly is whether or not the Cow is allied with player or enemy; cow class also holds the coords
  public Cow(float x, float y, boolean isFriendly){
    this.x = x;
    this.y = y;
    this.isFriendly = isFriendly;
  }
  
  //This is put in draw
  public void animate(){
    move();
    figure();
    
  }

  //These methods are required and called in animate; it's the Cow class's way of putting the objects in a loop for draw
  protected abstract void move();
  
  protected abstract void figure();
  
}
