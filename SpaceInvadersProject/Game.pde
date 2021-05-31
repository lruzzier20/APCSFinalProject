//This class deals with the game's system, information, and result interpretation
//current it is being used to deal with button presses
public class Game{
  //game controls in the order of 'a', 's', and ' '
  private boolean[] controls = {false,false,false};
  private Player player;
  private ArrayList<Cow> gameCows = new ArrayList<Cow>();
  private ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
  public Game(Player player){
    this.player = player;
  }
  
  public Game(){
  }
  
  public void setPlayer(Player player){
    this.player = player;
  }
  //This is the command that's going to be called in the draw loop
  public void run(){
    scoreDisplay();
    playerMovement();
    for(int bullet = 0; bullet < projectiles.size();bullet++){
      Projectile current = projectiles.get(bullet);
      current.searchHits(gameCows);
    }
  }
  
  /*Press and release are called whenever a key is pressed or released respectively. 
  By doing this, we can create much smoother movement and accurate keep track of keys pressed; I got part of the idea from here:
  https://forum.processing.org/two/discussion/22644/two-keys-pressed-three-keys-pressed-simultaneously
  
  (We're only using 3 buttons but just incase I'll type out a brief explanation of how to use it)
  In order to use it, you need to make sure you keep the order of buttons consistent (preferably we would use Hashmaps but I haven't played
  around with dictionaries in Java). You need this because you will have to provide the list of keys pressed in keyreleased and keypressed when calling
  these individual methods. This way it can simply loop through and find the match.
  */
  public void press(boolean[] buttons){
    for(int press = 0; press < buttons.length; press++){
      if(buttons[press] && !controls[press]){
        controls[press] = true;
        return;
      }
    }
  }
  
  public void release(boolean[] buttons){
    for(int press = 0; press < buttons.length; press++){
      if(buttons[press] && controls[press]){
        controls[press] = false;
        return;
      }
    }
  }
  
  public void playerMovement(){
    if(player != null) player.moveKey(controls[0],controls[1]);
  }
  
  public void addCow(Cow cow){
    gameCows.add(cow);
  }
  
  public void removeCow(Cow cow){
    gameCows.remove(cow);
  }
  
  public void addBullet(Projectile cow){
    projectiles.add(cow);
  }
  
  public void removeBullet(Projectile cow){
    projectiles.remove(cow);
  }
  
  public void scoreDisplay(){
    System.out.println(player.lives());
  }
  
  public boolean gameRunning(){
    return player.lives() > 0;
  }
}
