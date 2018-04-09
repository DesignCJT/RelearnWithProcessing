class BounceBall {
  
  
  //All variable values
  float x = -100;
  float y = -100;
  float xspeed;
  float yspeed;
  float mult1;
  float mult2;

  BounceBall(){
    //varible assigning
            //this spits the new ball out anywhere
            //x= random(0,width);
            //y= random(0,height);
  //this one spits the ball out where the mouse is in any 4 diagonal directions
  
    if (5 < random (0,10)) {
    mult1 = -1;
  }
  else {
    mult1 = 1; 
  }
    if (5 < random (0,10)) {
    mult2 = -1;
  }
  else {
    mult2 = 1; 
  }
  xspeed= random(2,3.5)*mult1;
  yspeed= random(2,3.5)*mult2;
  
  }
  void storeStart () {
    if (x == -100) {
    x = mouseX;
    y = mouseY;
    }
    
  }
  void displayBall () {
    stroke(0);
    fill(127);
    ellipse(x, y, 32, 32);
  }
  
  void moveBall () {
    x= x + xspeed;
    y= y + yspeed;
  }
  
  void checkEdges () {
    if (x > width || x < 0) {
      xspeed = xspeed * -1;
    }
    if (y> height || y < 0) {
      yspeed = yspeed * -1;
    }
  } 
}