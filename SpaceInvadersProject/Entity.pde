public abstract class Entity extends Cow{
  protected int lives;
  protected ArrayList<Projectile> currentFired = new ArrayList<Projectile>();
  public Entity(float x,float y,boolean isFriendly){
    super(x,y,isFriendly);
  }
  
  public void fire(){
    currentFired.add(new Projectile(super.x,super.y,super.isFriendly));
  }
  
}
