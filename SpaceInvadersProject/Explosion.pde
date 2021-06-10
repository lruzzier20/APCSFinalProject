public class Explosion extends Cow{
  int counter=0;
  public Explosion(float x, float y, Game game){
    super(x,y,4,game);
  }

  protected void figure(){
    stroke(255);
    line(x,y,x+7,y+7);
    line(x+20, y, x+13, y+7);
    line(x+10,y,x+10,y+7);
    line(x,y+20,x+7,y+13);
    line(x+10,y+20,x+10,y+13);
    line(x+20,y+20,x+13,y+13);
    counter++;
    if(counter==10){die();}
    stroke(0);
  }

  protected boolean inArea(float x, float y){
    return false;
  }

  protected void move(){}
  protected void hit(){}
}
