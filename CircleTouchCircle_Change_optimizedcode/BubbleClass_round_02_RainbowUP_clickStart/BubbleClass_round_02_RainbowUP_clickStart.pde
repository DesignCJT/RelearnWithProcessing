Bubble[] bubbles = new Bubble[200];
//The number above limits the total amount of clicks that can create bubbles

int total = 0;

void setup(){
  size(640, 360);
    for (int i = 0; i < bubbles.length; i++) {
      bubbles[i] = new Bubble(10);
    }
}

void mousePressed() {
 total = total +1; 
}

void draw(){
  background(255);
  for (int i = 0; i < total; i++) {
  bubbles[i].display();
  bubbles[i].ascend();
  bubbles[i].top();
  }
}