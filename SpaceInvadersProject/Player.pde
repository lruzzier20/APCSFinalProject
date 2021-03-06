public class Player extends Entity{
  PImage image;
  private int speed = 10;
  private int size = 75;
  public Player(Game game){
    super(100,(height-25),1,game);
    image = loadImage("player.png");
    boolean godMode = false;
    super.rateLimit = 500;
    super.lives = 3;
    if(godMode){
      super.lives = 9999;
      super.rateLimit = 0;
    }
  }
  
  protected void figure(){
    imageMode(CENTER);
    image(image,super.x,super.y,size,size/2);
    //rect(super.x,super.y,size,size/2);
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
