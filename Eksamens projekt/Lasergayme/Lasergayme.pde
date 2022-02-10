int pX1 = 130;
int pY1 = 130;
int chance = 2000;

boolean shoot = false;
boolean up = false;

boolean mainMeny = true;
boolean dead = false;

PImage player;
PImage laser0Left;
PImage laser0Right;
PImage laser0Up;
PImage laser1Left;
PImage laser1Right;
PImage laser1Up;
PImage laser2Left;
PImage laser2Right;
PImage laser2Up;

PImage laserBeamUp;
PImage laserBeam;

ArrayList <laser> LaserList = new ArrayList <laser> ();
ArrayList <laser> LaserList2 = new ArrayList <laser> ();

player a = new player(pX1, pY1);

void setup() {
  frameRate(120);
  size(680, 680);
  player = loadImage("spaceship.png");
  laser0Left = loadImage("Laser0Left.png");
  laser0Right = loadImage("Laser0Right.png");
  laser0Up = loadImage("Laser0Up.png");
  laser1Left = loadImage("Laser1Left.png");
  laser1Right = loadImage("Laser1Right.png");
  laser1Up = loadImage("Laser1Up.png");
  laser2Left = loadImage("Laser2Left.png");
  laser2Right = loadImage("Laser2Right.png");
  laser2Up = loadImage("Laser2Up.png");
  laserBeamUp = loadImage("LaserBeamUp.png");
  laserBeam = loadImage("LaserBeam.png");
  for (float o = 0; o<8; o++) {
    laser b = new laser();
    LaserList.add(b);
  }
  for (float o = 0; o<8; o++) {
    laser c = new laser();
    LaserList2.add(c);
  }
}

void draw() {
  clear();
  background(255, 255, 255);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(40);
  if (mainMeny == true) {
    rect(340, 340, 200, 50);
    fill(0, 0, 0);
    text("MainMeny", 340, 350);
    text("Play", 340, 420);
    noFill();
    rect(340, 410, 80, 50);
    //text(mouseX + " " + mouseY, mouseX, mouseY);
  } else if (dead == true) {
    rect(340, 340, 200, 50);
    text("YOU DIED!", 340, 350);
    rect(340, 410, 200, 50);
    text("Retry level", 340, 420);
    //text(mouseX + " " + mouseY, mouseX, mouseY);
  } else {
    int posx = 60;
    int posy = 130;
    rectMode(CORNER);
    grid(100, 100, 580, 100, 100, 100, 100, 580);
    up = false;
    for (laser b : LaserList) {
      b.drawLaser(posx, posy, chance, laser0Right, laser1Right, laser2Right, up, laserBeam);
      posy = posy + 60;
    }

    posx = 130;
    posy = 620;
    up = true;
    for (laser c : LaserList2) {
      c.drawLaser(posx, posy, chance, laser0Up, laser1Up, laser2Up, up, laserBeamUp);
      posx = posx + 60;
    }
    a.drawPlayer(player);
    fill(0, 0, 0);
   // text(mouseX + " " + mouseY, mouseX, mouseY);
    noFill();
  }
}

void keyPressed() {
  a.movePlayer(key);
}

void grid(int vertx1, int verty1, int vertx2, int verty2, int levelx1, int levely1, int levelx2, int levely2) {
  if (verty2 > 600) {
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
void shoot() {
  rect(100, 100, 100, 100);
  println("pew");
}

void drawLaser() {
}

void obstacle() {
}
void mousePressed() {

  if (mouseX >= 300 && mouseX <= 380 && mouseY >= 385 && mouseY <= 435 && mainMeny == true) {
    mainMeny = false;
  }
  if (mouseX >= 240 && mouseX <= 440 && mouseY >= 385 && mouseY <= 435 && dead == true)
    dead = false;
}
