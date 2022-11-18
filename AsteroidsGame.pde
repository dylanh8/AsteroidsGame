public Star [] galaxy = new Star [700];
public Spaceship ward = new Spaceship ();
public Asteroid [] field= new Asteroid [20];

public void setup(){
  size(1000,1000);
  for(int i = 0; i<galaxy.length; i++){
    galaxy[i] = new Star();
  }
  for(int i=0; i<field.length; i++){
    field[i]=new Asteroid();
  }
   
 
 
 
 
}

public void draw(){
  background(0);
  for(int i = 0; i<galaxy.length; i++){
    galaxy[i].show();
  }
   for(int i=0; i<field.length; i++){
    field[i].show();
    field[i].move();
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
        
        ward.myXspeed=0;
        ward.myYspeed=0;
        ward.myCenterX=(int)(Math.random()*1000);
        ward.myCenterY=(int)(Math.random()*1000);
        ward.myPointDirection=((int)Math.random()*360);
 
      }
  }
 
} 
