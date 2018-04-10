class BounceBall {
  
  float x = -100;
  float y = -100;
  float xspeed;
  float yspeed;
  float mult1;
  float mult2;

  BounceBall(){

  //This sends the ball out where the mouse is in a diagonal
  
  //Set mult1
    if (5 < random (0,10)) {
    mult1 = -1;
  }
  else {
    mult1 = 1; 
  }
  
  //Sets mult2
    if (5 < random (0,10)) {
    mult2 = -1;
  }
  else {
    mult2 = 1; 
  }
  
  //Using the mult varibles to assign movement
  
  xspeed= random(2,3.5)*mult1;
  yspeed= random(2,3.5)*mult2;
  }
  
  // Captures the initial positioning and saves it to varibles x and y
  
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
  
  //Compares the center of the ellipse to the outer boundaries of the window
  //and reverses if center of ellips exceeds.
  
  void checkEdges () {
    if (x > width || x < 0) {
      xspeed = xspeed * -1;
    }
    if (y> height || y < 0) {
      yspeed = yspeed * -1;
    }
  } 
}