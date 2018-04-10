
//add random color change when touching that stays once they stop touching
//make the color change slowly switch and switch back when touching/not touching


class Circles {
  float x; 
  float y; 
  float d;
  float cirColor;
  float xspeed;
  float yspeed;
  float hueX;
  float hueY; 
  float ballX;
  float ballY;
  float hueAt = 0 ;
  float hueTo = 60; 
  float switcherX;
  float switcherY;
  float coinFlipX;
  float coinFlipY;  
  
  Circles(float x ,float y,float d){  
  this.x = x; 
  this.y = y; 
  this.d = d;
  coinFlipX = 1;
  this.switcherX = random (0,2);
  this.switcherY = random (0,2);
  if (this.switcherX <= 1){
    coinFlipX = -1;
  }
  if (this.switcherY <= 1){
    coinFlipY = -1;
  }
  this.xspeed = coinFlipX * random (.5,1.2);
  this.yspeed = coinFlipY * random (.5,1.2);
  } 
  
  boolean touching (Circles other) {
    float dtest = dist(this.x,this.y,other.x, other.y);
    if (dtest < (    (this.d/2) + (other.d/2)   )   ) {
       return true;}
    else {
     return false;}
  }
  
  void changeRGB() {
    //fill(random(0,100),100,100,75);
    //this.hueAt = random(0,100);
    this.hueAt = hueTo;
    fill(this.hueAt,100,100,50);
  }
  
  boolean colorRef(Circles other) {
  if (this.hueAt==other.hueAt) {
    return true;
    }
  else {return false;}
  }
  
  void theyAllBlue () {
    hueTo = random(0,100);
  }
  
  void normRGB(float changeLook) {
    fill(changeLook,100,100,45);
  }
    void normRGB() {
    //fill(changeLook,100,100,45);
    fill(this.hueAt,100,100,50);
  }

  void display() {
    stroke(255);
    strokeWeight(5);
    ellipse(x, y, d, d);
  }
  
  void move() {
    //this.x = this.x + random(-2,2);
    //this.y = this.y + random(-2,2);
    
    this.x= this.x + this.xspeed;
    this.y= this.y + this.yspeed;
  }
  
  void checkEdges () {
  //if (x < (d/2) || x >        ) {
  if (x + (d/2) > width || x-(d/2) < 0) {
    xspeed = xspeed * -1;
  }
  if (y + (d/2) > height || y-(d/2) < 0) {
    yspeed = yspeed * -1;
  }
}
void colorBack () {
  hueX = x * 100 / width ;
  hueY = y * 100 / height; 
  background (((hueX/2) + (hueY/2)), 100, 75);
}
void colorBall () {
  ballX = x * 100 / width ;
  ballY = y * 100 / height; 
  fill ((100-((ballX/2) + (ballY/2))), 100, 100);; 
}
}