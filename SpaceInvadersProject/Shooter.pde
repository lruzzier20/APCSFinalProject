public class Shooter{
  float x,y,dx;
  boolean colliding, movingLeft, movingRight;
  
  Shooter(){
    x=width/2;
    y=600;
    dx=0;
    colliding=false;
    movingLeft=false;
    movingRight=false;
  }
  
  void move(){
    if(movingLeft){x-=dx;}
    if(movingRight){x+=dx;}
  }
  
  void display(){
    stroke(0);
    fill(0,200,0);
    rect(x-50,y-50,100,100);
  }
  
  void collide(){
    if(x+50==width){dx=0;}
  }
  
  void moveLeft(){
    movingLeft=true;
    dx=2;
  }
  
  void moveRight(){
    movingRight=true;
    dx=2;
  }
}
