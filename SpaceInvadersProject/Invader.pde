public class Invader extends Entity{
  private int speed=5;
  private int size=50;
  
  public Invader(Game game){
    super(50,50,false,game);
  }
  
  public Invader(int x, int y,Game game){
    super(x,y,false,game);
  }
  
  public void figure(){
    rectMode(CORNER);
    rect(super.x,super.y,size,size/2);
  }
  
  public void hit(){
    die();
  }
  
  public void move(){
    if(x<0){super.x=0;}
    else if(x+size>width){super.x=width-size;}
    else {super.x+=speed;}
  }
  
  public void swap(){
    speed*=-1;
    super.y+=5;
  }
  
  public boolean bump(){
    if(x<0){return true;}
    if(x+size>width){return true;}
    return false;
  }
  
  public boolean inArea(float otherX, float otherY){
    return (otherX > super.x && otherX < super.x + size) && (otherY > super.y&& otherY < super.y + size);
    
  }
}
