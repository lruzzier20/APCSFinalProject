public class Shooter{
  float x,y,dx;
  boolean colliding;
  
  Shooter(){
    x=width/2;
    y=600;
    dx=0;
  }
  
  void move(){
    if(movingLeft){x-=dx;}
    if(movingRight){x+=dx;}
  }
  
  void display(){
    stroke(0);
    fill(
  }
}
