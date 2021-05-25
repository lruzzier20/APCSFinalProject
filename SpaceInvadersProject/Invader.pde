public class Invader extends Entity{
  private int xspeed=10;
  private int yspeed=10;
  private int size=10;
  
  public Invader(){
    super(50,50,false);
  }
  
  public void figure(){
    rect(super.x,super.y,size,size/2);
  }
  
  public void move(){
    if(x<=0){super.x=0;}
    if(x+size>=width){super.x=width-size;}
  }
}
