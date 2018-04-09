BounceBall[] ballPit = new BounceBall[100];

int total = 0;


void setup() {
  size(320, 240);
    for (int i = 0; i < ballPit.length; i++) {
      ballPit[i] = new BounceBall();
    }
}

void mousePressed() {
  
  total++;
}


void draw() {
  background(255);
  for (int i = 0; i < total; i++) {
  ballPit[i].storeStart();
  ballPit[i].displayBall();
  ballPit[i].moveBall();
  ballPit[i].checkEdges();
  }
}