public class Barrier extends Cow{
  int health = 3;
  float size = 50;
  int damage = 10;
  boolean toggleHit = false;
  public Barrier(float x, float y,Game game){
    super(x, y, 3, game);  
  }
  
  public void hit(){
    health-=damage;
    toggleHit = !toggleHit;
<<<<<<< HEAD
=======
    kill();
    
>>>>>>> 1127a239add5b6cfc61858f8cb9c875fcb1161ff
  }
  
  public void figure(){
    if(toggleHit)fill(0,255,0);
    else{
      fill(255,0,0);
    }
    rectMode(CORNER);
    rect(x,y,size,size);
    fill(255);
  }
  
  public boolean inArea(float otherX, float otherY){
    return otherX > this.x && otherX < this.x+size && otherY > this.y && otherY < this.y+size;
  }
  
  public void move(){
  }
  
  public void kill(){
    if(health <= 0){
       die();
    }
  }
  
}
