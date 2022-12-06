public class Bullet extends Floater
{
  
Bullet(Spaceship ship){
  myCenterX=ward.getXCenter();
  myCenterY=ward.getYCenter();
  myXspeed=ward.getXSpeed();
  myYspeed=ward.getYSpeed();
  myPointDirection=ward.getDirection();
  accelerate(6);
}

public void show(){
  fill(#CF3CED);
  ellipse((float)myCenterX, (float)myCenterY, 4, 4);
}


public void move(){
   myCenterX += myXspeed;    
    myCenterY += myYspeed;     

  
}


}




