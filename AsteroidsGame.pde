public Star [] galaxy = new Star [700];
public Spaceship ward = new Spaceship ();


public void setup(){
  size(1000,1000);
  for(int i = 0; i<galaxy.length; i++){
    galaxy[i] = new Star();
  }
 
 
 
 
 
}

public void draw(){
  background(0);
  for(int i = 0; i<galaxy.length; i++){
    galaxy[i].show();
  }
  
  ward.show();
  ward.move();
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
        
        ward.setXSpeed(0);
        ward.setYSpeed(0);
        ward.setXCenter((int)(Math.random()*1000));
        ward.setYCenter((int)(Math.random()*1000));
        ward.setDirection((int)Math.random()*360);
 
      }
  }
 
} 
