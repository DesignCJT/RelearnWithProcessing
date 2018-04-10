//Make it so that once every color has changed over, it resets and changes on overlapping from there


Circles [] roundOne = new Circles[20];

Circles compare;

void setup(){
  size(1600,800);
  compare = new  Circles();

for (int i = 0; i < roundOne.length; i++) {
  //float d = (i+1)*10;
  //float d = random (20,50);
  //float d = 10;
  float d = random(30,70);
  float x = random(0+(d/2),(width-(d/2)));
  float y = random(0+(d/2),(height-(d/2)));
  boolean tester = false;
  //float xspeed = random (.5,1.2);
  //float yspeed = random (.5,1.2);
  roundOne[i] = new Circles(x,y,d);
  colorMode(HSB,100);
  
}
}






void draw() {
  roundOne[0].colorBack();
  
  //background(0);
  //float maker = 40;
  //fill(maker, 100, 100, 75);
  for (int i = 0; i < roundOne.length; i++) {
    
    boolean tester = false;
            for(int j = 0; j < roundOne.length; j++) {
              if  ( (i != j) && (roundOne[i].touching(roundOne[j]))  ) {
              tester = true;}
            }
  if (tester) {
    roundOne[i].changeRGB();
    //maker = 60; 
    //fill(maker, 100, 100,75);
    }
  else {
    //roundOne[i].normRGB(40);
    roundOne[i].normRGB();
    //maker = 40;
    //fill(maker,100, 100, 75);
  }

  
  
roundOne[i].display();
roundOne[i].move();
roundOne[i].checkEdges();

}
boolean allSame = true;
for (int i = 0; i < roundOne.length; i++) {
  for (int j = 0; j < roundOne.length; j++) {
    if (roundOne[i].colorRef(roundOne[j])){
      }
    else {allSame = false;}  
    }
  
}

if (allSame == true){
  compare.theyAllBlue(); 
}

//roundOne[0].x = mouseX;
//roundOne[0].y = mouseY;

}