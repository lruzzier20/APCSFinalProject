public class Projectile extends Cow{
  int speed = 13;
  int size = 3;
  public Projectile(float x,float y,int isFriendly, Game game){
    super(x,y,isFriendly, game);
  }
  
  //moves up or down depending on who shot it
  public void move(){
    if(isFriendly == 1){
      y -= speed;
    }
    else{
      y += speed;
    }
    if(dead()) isDead = true;
  }
  
  public void searchHits(ArrayList<Cow> others){
    for(int other = 0; other < others.size();other++){
      Cow current = others.get(other);
      if(current.isFriendly != this.isFriendly && current.inArea(super.x,super.y) && current.isDead == false){
        attack(current);
        return;
      }
    }
  }
  
  public void figure(){
    rect(x,y,size,size*8);
  }
  
  //checks if out of bounds
  public boolean dead(){
    return y < 0 || y > height;
  }
  
  public void hit(){
    die();
  }
  
  public void attack(Cow enemy){
    enemy.hit();
    this.hit();
  }
  
  public boolean inArea(float otherX, float otherY){
    return (otherX > super.x - size/2 && otherX < super.x + size/2) && (otherY > super.y - size/2 && otherY < super.y + size/2);
    
  }
  
}
