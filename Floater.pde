public class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int r, g, b;   
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
    fill(r, g, b);   
    stroke(r, g, b);    
    
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
  
  
  public void setXCenter(double n){
  myCenterX=n;
  }
  
   public void setYCenter(double n){
  myCenterY=n;
  }
  
  public void setXSpeed(double n){
  myXspeed=n;
  }
  
   public void setYSpeed(double n){
  myYspeed=n;
  }
  
    public void setDirection(double n){
  myPointDirection=n;
  }
  
  
  
  public double getXCenter(){
    return myCenterX;
    
  }
  public double getYCenter(){
    return myCenterY;
    
  }
  public double getXSpeed(){
    return myXspeed;
    
  }
   public double getYSpeed(){
    return myYspeed;
    
  }
  public void setR(int n){
    r=n;
  }
   public void setG(int n){
    g=n;
  }
   public void setB(int n){
    b=n;
  }
  public int getR(){
    return r;
  }
  public int getG(){
    return g;
  }
  public int getB(){
    
    return b;
  }
    public double getDirection(){
    return myPointDirection;
  }
  
  
  
  
  
  
  
  
  
  
}


