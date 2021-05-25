//This class deals with the game's system, information, and result interpretation
//current it is being used to deal with button presses
public class Game{
  //game controls in the order of 'a', 's', and ' '
  private boolean[] controls = {false,false,false};
  Player player;
  
  public Game(Player player){
    this.player = player;
  }
  
  public void run(){
    playerMovement();
  }
  
  public void press(boolean[] buttons){
    for(int press = 0; press < buttons.length; press++){
      if(buttons[press] && !controls[press]){
        controls[press] = true;
      }
    }
  }
  
  public void release(boolean[] buttons){
    for(int press = 0; press < buttons.length; press++){
      if(buttons[press] && controls[press]){
        controls[press] = false;
      }
    }
  }
  
  public void playerMovement(){
    player.moveKey(controls[0],controls[1]);
  }
  
  
}
