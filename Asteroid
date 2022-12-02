public class Asteroid extends Floater
{
  double rotSpeed;
  Asteroid(){
    corners=8;
    rotSpeed=(int)(Math.random()*20);
      r=70;
      g=70;
      b=70;
      myCenterX=(int)(Math.random()*1000);
      myCenterY=(int)(Math.random()*1000);
      myXspeed=(int)(Math.random()*4);
      myYspeed=(int)(Math.random()*4);
      myPointDirection=(int)(Math.random()*361+1);
     
     int [] x={(int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16)};
     int [] y={(int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16)};
     xCorners =x;
     yCorners=y;
     
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  }
