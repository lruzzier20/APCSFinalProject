public abstract class Cow{
  protected float x;
  protected float y;
  protected boolean isFriendly;
  
  public Cow(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  public void animate(){
    move();
    figure();
    
  }

  protected abstract void move();
  
  protected abstract void figure();
  
}
