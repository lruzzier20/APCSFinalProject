public class Invader extends Entity{
  private float speed= width/480;
  private int size=30;
  private int points;
  private color hue;

  public Invader(Game game){
    super(50,50,0,game);
    points=100;
    hue=color(255);
  }
  
  public Invader(int type, float x, float y,Game game){
    super(x,y,0,game);
    if(type==0){points=100; hue=color(255);}
    if(type==1){points=150; hue=color(0,0,255);}
    if(type==2){points=200; hue=color(255,0,0);}
  }
  
  protected void figure(){
    fill(hue);
    rectMode(CORNER);
    rect(super.x,super.y,size,size);
  }
  
  protected void hit(){
    game.pointAdd(points);
    die();
  }
  
  protected void move(){
    if(x<0){super.x=0;}
    else if(x+size>width){super.x=width-size;}
    else {super.x+=speed;}
    rocketUse();
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
  
  protected boolean inArea(float otherX, float otherY){
    return (otherX > super.x && otherX < super.x + size) && (otherY > super.y&& otherY < super.y + size);
  }
  
  public void addSpeed(float s){
    speed+=s;
  }
  
  public float getSpeed(){
    return speed;
  }
}
