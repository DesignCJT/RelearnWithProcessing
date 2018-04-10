class Bubble {
  
  float x;
  float y;
  float diameter;
  
  //color levels
  float redLevel;
  float greenLevel;
  float blueLevel;
  
  float yspeed;
  
  //translucency level
  float aLevel;
 
  //this one makes some amount blink by each loop of Draw redrawing a new color
  float rareBlink;
  
  Bubble(float tempD){
     //tempD gets it's value when class bubble is called, essentially the minimum 
     //diameter of the bubbles
  
   x = random (0, width) ;
   rareBlink = random (0,200);
   yspeed = random(0.5,1.2);
   
   diameter = tempD + random(0,50);
   
   //y is assigned further down to be after diameter adjustment
   y = height+ diameter;
  
   //color assigning
   redLevel = random(0,255);
   greenLevel = random(0,255);
   blueLevel = random(0,255);
   aLevel = random(0,255);
  }
  
  //Shows the bubble and checks if it's a rare color changing one!
  void display() {
    stroke(0);
    strokeWeight(0);
    fill(redLevel,greenLevel,blueLevel, aLevel);
        //Below makes a strobe color as it's randomly redrawn each time
      if ( rareBlink < 5) {
      fill(random(0,200), random(0,200), random(0,200), random(100, 255));
      }
    ellipse(x, y, diameter, diameter);

  }
  
  //How fast the bubble moves upward (y is measure 0 down to max height), and 
  //the x part give the bubbles some wiggle. 
  void ascend() {
    y = y - yspeed;
    x = x + random(-1,1);
  }
  
  //Checks if the bubble has completely left the top and resets the bubble to
  //below the window to then rise up again!
  void top() {
    if (y < -(diameter/2)) {
      y = height+ diameter;
    }
  }
}