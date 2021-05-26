public abstract class Entity extends Cow{
  protected int lives;
  protected ArrayList<Projectile> currentFired = new ArrayList<Projectile>();
  protected long lastFired = -1;
  protected long rateLimit = 0;
  public Entity(float x,float y,boolean isFriendly){
    super(x,y,isFriendly);
  }
  
  public void fire(){
    //uses time to rate limit the shooting; rate is customizable using lastFired and rateLimit
    long currentTime = System.currentTimeMillis();
    if(lastFired == -1 || currentTime - lastFired >= rateLimit){
      currentFired.add(new Projectile(super.x,super.y,super.isFriendly));
      lastFired = currentTime;

    }
  }
  
  public void rocketUse(){
  //loops through the rockets and makes sure they get animated
    for(int rocket = 0; rocket < currentFired.size();rocket++){
      Projectile current = currentFired.get(rocket);
      if(current.isDead){
        currentFired.remove(rocket);
        rocket--;
      }
      else{
        current.animate();
      }
    }
  }
  
}
