public class Invader extends Entity{
  private int speed=5;
  private int size=50;
  
  public Invader(){
    super(50,50,false);
  }
  
  public Invader(int x, int y){
    super(x,y,false);
  }
  
  public void figure(){
    rectMode(CORNER);
    rect(super.x,super.y,size,size/2);
  }
  
  public void move(){
    if(x<0){super.x=0; speed*=-1; super.y+=5;}
    else if(x+size>width){super.x=width-size; speed*=-1; super.y+=5;}
    else {super.x+=speed;}
  }
}
