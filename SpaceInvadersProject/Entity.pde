public abstract class Entity extends Cow{
  protected int lives;
  protected ArrayList<Projectile> currentFired = new ArrayList<Projectile>();
  private long lastFired = -1;
  public Entity(float x,float y,boolean isFriendly){
    super(x,y,isFriendly);
  }
  
  public void fire(){
    long currentTime = System.currentTimeMillis();
    if(lastFired == -1 || currentTime - lastFired >= 1000){
      currentFired.add(new Projectile(super.x,super.y,super.isFriendly));
      lastFired = currentTime;

    }
  }
  
}
