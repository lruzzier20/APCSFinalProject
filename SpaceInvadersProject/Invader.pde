public class Invader extends Entity{
  private int speed=width/480;
  private int size=30;

  public Invader(Game game){
    super(50,50,0,game);
  }
  
  public Invader(float x, float y,Game game){
    super(x,y,0,game);
  }
  
  public void figure(){
    rectMode(CORNER);
    rect(super.x,super.y,size,size);
  }
  
  public void hit(){
    die();
  }
  
  public void move(){
    if(x<0){super.x=0;}
    else if(x+size>width){super.x=width-size;}
    else {super.x+=speed;}
    fire();
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
