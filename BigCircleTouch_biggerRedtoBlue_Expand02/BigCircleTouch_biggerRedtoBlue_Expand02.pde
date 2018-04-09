//Make it so that once every color has changed over, it resets and changes on overlapping from there


Circles [] roundOne = new Circles[20];

Circles compare;

int allSame;
void setup(){
  size(1900,1030);
  compare = new  Circles();

for (int i = 0; i < roundOne.length; i++) {

  float d = random(30,70);
  float x = random(0+(d/2),(width-(d/2)));
  float y = random(0+(d/2),(height-(d/2)));
  
  roundOne[i] = new Circles(x,y,d);
  colorMode(HSB,100);
  
}
}













void draw() {
  roundOne[0].colorBack();
  for (int i = 0; i < roundOne.length; i++) { 
    boolean tester = false;
            for(int j = 0; j < roundOne.length; j++) {
              if  ( (i != j) && (roundOne[i].touching(roundOne[j]))  ) {
              tester = true;}
            }
  if (tester) {
    roundOne[i].changeRGB();}
  else {
    roundOne[i].normRGB();
  }
roundOne[i].display();
roundOne[i].move();
roundOne[i].checkEdges();
}
allSame = 0;
for (int a = 0; a <roundOne.length; a++) {
  if (roundOne[a].selfColorCheck()){allSame= allSame+1;
  }
  else {}
}
if (allSame == roundOne.length){ //<>//
  int newHue = int(random(0,100));
  for (int b = 0; b <roundOne.length; b++) {
    roundOne[b].changeHue(newHue);
  }
} //closes if

} //closes Draw