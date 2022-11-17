public class Asteroid extends Floater
{
  
  Asteroid(){
    corners=8;
      myColor=80;
      myCenterX=(int)(Math.random()*1000);
      myCenterY=(int)(Math.random()*1000);
      myXspeed=(int)(Math.random()*4);
      myYspeed=(int)(Math.random()*4);
      myPointDirection=(int)(Math.random()*361+1);
     
     int [] x={(int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8)};
     int [] y={(int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8), (int)(Math.random()*16-8)};
     xCorners =x;
     yCorners=y;
      
    }
  }
  
  





public class Spaceship extends Floater  
{  
    Spaceship(){
      corners=4;
      myColor=255;
      myCenterX=350;
      myCenterY=350;
      myXspeed=0;
      myYspeed=0;
      myPointDirection=0;
     
     int [] x={18, -12, -6, -12};
     int [] y={0, 12, 0, -12};
     xCorners =x;
     yCorners=y;
     
    
    }
    public void keyPressed(){
     
    }
    
    
}


class Star //note that this class does NOT extend Floater
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

class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class
{  
  protected int corners;  //the number of corners, a triangular floater has 3  
  protected int[] xCorners;  
  protected int[] yCorners;  
  protected int myColor;  
  protected double myCenterX, myCenterY; //holds center coordinates  
  protected double myXspeed, myYspeed; //holds the speed of travel in the x and y directions  
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    

  //Accelerates the floater in the direction it is pointing (myPointDirection)  
  public void accelerate (double dAmount)  
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);    
    //change coordinates of direction of travel    
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));      
  }  
  public void turn (double degreesOfRotation)  
  {    
    //rotates the floater by a given number of degrees    
    myPointDirection+=degreesOfRotation;  
  }  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;    

    //wrap around screen    
    if(myCenterX >width)
    {    
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {    
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }
   
    else if (myCenterY < 0)
    {    
      myCenterY = height;    
    }  
  }  
  public void show ()  //Draws the floater at the current position  
  {            
    fill(myColor);  
    stroke(myColor);    
   
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()    
    float dRadians = (float)(myPointDirection*(Math.PI/180));
   
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
   
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }  
}
