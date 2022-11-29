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
