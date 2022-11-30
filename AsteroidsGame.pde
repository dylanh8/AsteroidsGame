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
  ward.hyperspacecheck();
  }
 
} 
