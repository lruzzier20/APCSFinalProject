public class Explosion extends Cow{
  int counter=0;
  public Explosion(float x, float y, Game game){
    super(x,y,4,game);
  }

  protected void figure(){
    fill(color(255,0,0));
    ellipse(x,y,40,40);
    counter++;
    if(counter==10){die();}
  }

  protected boolean inArea(float x, float y){
    return false;
  }

  protected void move(){}
  protected void hit(){}
}
