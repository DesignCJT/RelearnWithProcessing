void setup(){

size(400, 300);
background(0);
strokeWeight(2);
stroke(255);
colorMode(RGB,100);
}

//dist(x,y,x,y)


void draw(){
for (float y = 0; y < height; y=y+20) {
  for (float x = 0; x < width; x = x + 20) {
    
    
    //This alternate commented out dows greylevel from the outside in to the mouse
    //greyLevel = (dist(x,y, width/2, height/2))*100/(dist(0,0,width/2, height/2));
    
    //This one does greylevel from mouse position
    float greyLevel = (dist(mouseX,mouseY,x,y))*100/(dist(0,0,width/4,height/4));
    fill(greyLevel);
    rect(x,y, 20,20);
  }
}
}