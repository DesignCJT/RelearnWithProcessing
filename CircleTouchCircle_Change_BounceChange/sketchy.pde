class Circles {
  float x; 
  float y; 
  float d;
  float cirColor;
  float xspeed;
  float yspeed;
  
  Circles(float x ,float y,float d){  
  this.x = x; 
  this.y = y; 
  this.d = d;
  this.xspeed = random (.5,1.2);
  this.yspeed = random (.5,1.2);
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
    fill(20,40,35);
  }
  
  void normRGB(float changeLook) {
    fill(changeLook,100,100,75);
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
}