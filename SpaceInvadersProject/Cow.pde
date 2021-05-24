public abstract class Cow{
  protected float x;
  protected float y;
  protected boolean isFriendly;
  
  public Cow(int x, int y, boolean isFriendly){
    this.x = x;
    this.y = y;
    this.isFriendly = isFriendly;
  }
  
  public void animate(){
    move();
    figure();
    
  }

  protected abstract void move();
  
  protected abstract void figure();
  
}
