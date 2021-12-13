player a = new player();
int pX1 = 130;
int pY1 = 130;

void setup() {
  size(680, 680);
}  

void draw() {
  clear();
  rectMode(CORNER);
  rect(100, 100, 480, 480);
  grid(100, 100, 580, 100, 100, 100, 100, 580);
  a.drawPlayer(pX1, pY1);
  text(mouseY, mouseX, mouseY);
}

void keyPressed(){
    a.movePlayer(key);
}

void grid(int vertx1, int verty1, int vertx2, int verty2, int levelx1, int levely1, int levelx2, int levely2) {
  if (verty2 > 780) {
  } else {
    line(vertx1, verty1, vertx2, verty2); 
    verty1 = verty1 + 60;
    verty2 = verty2 + 60;

    line(levelx1, levely1, levelx2, levely2);
    levelx1 = levelx1 + 60;
    levelx2 = levelx2 + 60;
    grid(vertx1, verty1, vertx2, verty2, levelx1, levely1, levelx2, levely2);
  }
}

void shootLaser() {
}

void drawLaser() {
}

void obstacle() {
}
