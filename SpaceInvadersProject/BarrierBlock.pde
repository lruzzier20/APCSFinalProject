public class BarrierBlock{
  private float x;
  private float y;
  private int ySize = 50;
  private int xSize = 100;
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
        barrierBlock.add(new BarrierPixel(x+(float)c,y+(float)r,game,this));
      }
    }
  }
  
  public void revive(){
    for(int r = 0; r < barrierBlock.size();r++){
      barrierBlock.get(r).revive();
    }
  }
  
}
