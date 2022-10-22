Lightning[] Bolt = new Lightning[300];
int x = 0;
int y = 0;
int x2 = 0;
int y2 = 0;
int rad = 0;
void setup(){
  size(400,400);
  background(255);
  for (int i = 0; i < Bolt.length; i++) {
    Bolt[i] = new Lightning();
  }
} 

void draw(){
  fill((int)(Math.random()*50+100),(int)(Math.random()*50+100),(int)(Math.random()*50+100),20);
  stroke((int)(Math.random()*50+100),(int)(Math.random()*50+100),(int)(Math.random()*50+100),300);
  ellipse(200,200,rad,rad);
  rad = rad + 30;
  if(rad > 600)
    rad = 0;
  for (int i = 0; i < Bolt.length; i++) {
  fill(200,0,0);
  Bolt[i].move();
  Bolt[i].show();
}
}

class Lightning{
  color myC;
  int myX, myY, Xspeed, Yspeed;
  
  Lightning(){
    myC = (int)(Math.random()*100+150);
    myX = 200;
    myY = 200;
    Xspeed = (int)(Math.random()*10)-4;
    Yspeed = (int)(Math.random()*10)-4;
  }
  
  void show(){
   fill(myC-20,myC-60,myC-80,100);
   ellipse(myX, myY, 10, 10);
  }
  
  void move(){
   myX = myX + Xspeed;
   myY = myY + Yspeed;
   x = myX;
   y = myY;
   x2 = Xspeed;
   y2 = Yspeed;
   if(myX > 400){
     Xspeed = -Xspeed;
   }
   if(myX < 0){
     Xspeed = -Xspeed;
  }
  if(myY > 400){
     Yspeed = -Yspeed;
   }
   if(myY < 0){
     Yspeed = -Yspeed;
  }
  }
}
