public class UFO extends Cow{
  protected int size=25;
  protected int speed=10;
  protected int points=0;
  
  public UFO(float x, float y,Game game){    
    super(x,y,0,game);
    points=(int)((random(3)+1)*50);
  }
  
  protected void move(){
    x+=speed;
  }
  
  protected void figure(){
    fill(color(255,0,0));
    rect(x,y,size*2,size);
    if(x>width){die();}
  }
  
  protected boolean inArea(float otherX, float otherY){
    return (otherX > x && otherX < x + size*2) && (otherY > super.y && otherY < super.y + size);
  }
  
  protected void hit(){
    game.pointAdd(points);
    die();
    game.boom(x,y);
  }
}
