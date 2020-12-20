float slingLength;

float lineX1 = 195;
float lineX2 = 890;

void setup() {
frameRate(10);
size(1000,1000);
}

void draw(){
  clear();
  background(220,220,220);
  rect(180, 890, 30, 100);
  sling();
  boldThrow();
}
