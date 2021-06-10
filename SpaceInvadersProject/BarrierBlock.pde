public class BarrierBlock{
  private ArrayList<BarrierPixel> barrierBlock = new ArrayList<BarrierPixel>();
  public void animate(){
    for(int block = 0; block < barrierBlock.size(); block++){
      barrierBlock.get(block).animate();
    }
  }
  
  public ArrayList<BarrierPixel> sendList(){
    return barrierBlock;
  }
  
}
