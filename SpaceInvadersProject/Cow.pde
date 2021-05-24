public abstract class Cow{
  protected double x;
  protected double y;
  
  public void animate(){
    move();
    figure();
    
  }

  protected abstract void move();
  
  protected abstract void figure();
  
}
