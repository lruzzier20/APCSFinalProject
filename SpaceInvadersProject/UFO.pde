public class UFO extends Cow{
  protected int size=25;
  protected int speed=5;
  protected int points=0;
  private PImage image;
  public UFO(float x, float y,Game game){    
    super(x,y,0,game);
    points=(int)(random(3)+1)*50;
    image = loadImage("ufo.png");
  }
  
  protected void move(){
    x+=speed;
  }
  
  protected void figure(){
    fill(color(255,0,0));
    image(image,x,y,size*2,size);
    
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
