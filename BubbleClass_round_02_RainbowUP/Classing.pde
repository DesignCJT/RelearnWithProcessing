class Bubble {
  
  float x;
  float y;
  float diameter;
  float redLevel;
  float greenLevel;
  float blueLevel;
  float yspeed;
  float aLevel;
  float rareBlink;
  
  Bubble(float tempD){
   x = random (0, width) ;
   rareBlink = random (0,200);
   yspeed = random(0.5,1.2);
   diameter = tempD + random(0,20);
   y = height+ diameter;
   redLevel = random(0,255);
   greenLevel = random(0,255);
   blueLevel = random(0,255);
   aLevel = random(0,255);
  }
  void display() {
    stroke(0);
    strokeWeight(0);
    fill(redLevel,greenLevel,blueLevel, aLevel);
    //Below makes a strobe color as it's randomly redrawn each time
    
    if ( rareBlink < 3) {
    fill(random(0,200), random(0,200), random(0,200), random(100, 255));
    }
    ellipse(x, y, diameter, diameter);

  }
  
  void ascend() {
    y = y - yspeed;
    x = x + random(-1,1);
  }
  
  void top() {
    if (y < -(diameter/2)) {
      y = height+ diameter;
    }
  }
}