void setup(){

size(400, 300);
background(0);
strokeWeight(2);
stroke(255);
colorMode(RGB,100);
}
//first do distance from center, then do distance from mouse, black towards center

//dist(x,y,x,y)


void draw(){
for (float y = 0; y < height; y=y+20) {
  for (float x = 0; x < width; x = x + 20) {
    
    
    //This one does greyLevel to the center
    //greyLevel = (dist(x,y, width/2, height/2))*100/(dist(0,0,width/2, height/2));
    
    //This one does greylevel to mouse position
    float greyLevel = (dist(mouseX,mouseY,x,y))*100/(dist(0,0,width/4,height/4));
    // Testing  float greyLevel = dist(x,y,mouseX,mouseY);
    fill(greyLevel);
    rect(x,y, 20,20);
   
     
     
//    if (y == height) {
//        y = 0;
//        x = 0;
//    }
  }
}
}