public class Star //note that this class does NOT extend Floater
{
  private int x, y, size, r, g, b;
  public Star(){
   x = (int)(Math.random()*1000);
   y = (int)(Math.random()*1000);
   size = (int)(Math.random()*3);
   r = (int)(Math.random()*255);
   g = (int)(Math.random()*255);
   b = (int)(Math.random()*255);

  }
 
  public void setX(int i){
    x = i;
  }
 
   public void setY(int i){
    y = i;
  }
  public int getX(){
    return x;
  }
 
  public int getY(){
    return y;
  }
 
  public void show(){
    fill(r, g, b);
    stroke(r, g, b);
    ellipse(x, y, size, size);
  }
 
 
 
 
 
 
}
