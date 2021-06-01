public class Barrier extends Cow{
  int health = 3;
  float size = 50;
  public Barrier(float x, float y,Game game){
    super(x, y, 3, game);  
  }
  
  public void hit(){
    health--;
    kill();
  }
  
  public void figure(){
    if(health==3)fill(0,255,0);
    if(health==2)fill(0,155,0);
    if(health==1)fill(0,55,0);
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
