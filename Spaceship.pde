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
    public void hyperspacecheck(){
     if(keyPressed){
     if(key=='w'){
        ward.accelerate(0.1);
      }
      if(key=='s'){
        ward.accelerate(-0.1);
      }
      if(key=='a'){
        ward.myPointDirection+=2;
      }
      if(key=='d'){
        ward.myPointDirection-=2;
      }
      if(key==' '){
        
        ward.myXspeed=0;
        ward.myYspeed=0;
        ward.myCenterX=(int)(Math.random()*1000);
        ward.myCenterY=(int)(Math.random()*1000);
        ward.myPointDirection=((int)Math.random()*360);
 
      }
    
    }
    
     
    }
    
    
