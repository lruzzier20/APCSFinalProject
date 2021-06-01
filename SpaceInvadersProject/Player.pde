public class Player extends Entity{
  private int speed = 10;
  private int size = 100;
  
  public Player(Game game){
    super(100,(height-25),1,game);
    super.rateLimit = 500;
    super.lives = 3;
    
  }
  
  protected void figure(){
    fill(color(0,255,0));
    rectMode(CENTER);
    rect(super.x,super.y,size,size/2);
  }
  
  protected void move(){
    if(x-size/2<0){super.x=0+size/2;}
    if(x+size/2>=width){super.x=width-size/2;}
    
    rocketUse();
  }
  
  //input left and right boolean and player moves accordingly
  public void moveKey(boolean left, boolean right){
    if(left) super.x += speed;
    if(right) super.x += -speed;
  }
  
  protected void hit(){
    lives--;
    if(lives == 0) die();
  }
  
  protected boolean inArea(float otherX, float otherY){
    return (otherX > super.x - size/2 && otherX < super.x + size/2) && (otherY > super.y - size/2 && otherY < super.y + size/2);
    
  }
  
  public int lives(){
    return lives;
  }
  
}
