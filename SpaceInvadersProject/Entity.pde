public abstract class Entity extends Cow{
  protected int lives;
  protected ArrayList<Projectile> currentFired = new ArrayList<Projectile>();
  protected long lastFired = -1;
  protected long rateLimit = 0;
  private Game game;
  public Entity(float x,float y,boolean isFriendly, Game game){
    super(x,y,isFriendly, game);
    this.game = game;
  }
  
  public void fire(){
    //uses time to rate limit the shooting; rate is customizable using lastFired and rateLimit
    long currentTime = System.currentTimeMillis();
    if(lastFired == -1 || currentTime - lastFired >= rateLimit){
      Projectile bullet = new Projectile(super.x,super.y,super.isFriendly,this.game);
      currentFired.add(bullet);
      game.addBullet(bullet);
      lastFired = currentTime;

    }
  }
  
  public void rocketUse(){
  //loops through the rockets and makes sure they get animated
    for(int rocket = 0; rocket < currentFired.size();rocket++){
      Projectile current = currentFired.get(rocket);
      if(current.isDead){
        currentFired.remove(rocket);
        game.removeBullet(current);
        rocket--;
      }
      else{
        current.animate();
      }
    }
  }
  
}
