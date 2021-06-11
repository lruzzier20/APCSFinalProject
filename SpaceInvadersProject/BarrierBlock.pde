public class BarrierBlock{
  private float x;
  private float y;
  private int ySize = 40;
  private int xSize = 60;
  private ArrayList<BarrierPixel> barrierBlock = new ArrayList<BarrierPixel>();
  private Game game;

  public BarrierBlock(float x, float y, Game game){
    this.x = x;
    this.y = y;
    this.game = game;
    setupBarrier();
  }
  
  public void animate(){
    for(int block = 0; block < barrierBlock.size(); block++){
      barrierBlock.get(block).animate();
    }
  }
  
  public ArrayList<BarrierPixel> sendList(){
    return barrierBlock;
  }
  
  public void setupBarrier(){
    for(int r = 0; r < ySize;r++){
      for(int c = 0; c < xSize; c++){
        barrierBlock.add(new BarrierPixel(x+(float)c*1.5,y+(float)r*1.5,game,this));
      }
    }
  }
  
  public void revive(){
    for(int r = 0; r < barrierBlock.size();r++){
      barrierBlock.get(r).revive();
    }
  }
  
}
