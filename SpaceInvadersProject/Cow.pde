public abstract class Cow{
  protected float x;
  protected float y;
  protected int isFriendly;
  protected boolean isDead;
  //isFriendly is whether or not the Cow is allied with player or enemy; cow class also holds the coords
  public Cow(float x, float y, int isFriendly, Game game){
    this.x = x;
    this.y = y;
    this.isFriendly = isFriendly;
    isDead = false;
    game.addCow(this);
  }
  
  //This is put in draw
  public void animate(){
    if(!isDead){
      move();
      figure();
    }
    
  }
  protected abstract void hit();
  protected void die(){
    isDead = true;
  }
  
  protected abstract boolean inArea(float x, float y);

  //These methods are required and called in animate; it's the Cow class's way of putting the objects in a loop for draw
  protected abstract void move();
  
  protected abstract void figure();
  
}
