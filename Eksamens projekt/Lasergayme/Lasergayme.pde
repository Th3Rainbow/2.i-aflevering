int pX1 = 130;
int pY1 = 130;
int chance = 2000;

int currentLvl = 1;
int highestLvl = 1;
int chargeTime = 2000;
int selectedLvl = 1;

int levelTime = 20000;
int startTime;

boolean shoot = false;
boolean up = false;

boolean mainMenu = true;
boolean dead = false;
boolean levels = false;

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
  startTime = millis();
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
  println(startTime);
  background(255, 255, 255);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(40);
  if (mainMenu == true) { // mainmenu
    mainMenu();
    return;
  } else if (dead == true) { //dead
    dead();
    return;
  } else if (levels == true) { //levels
    levels();
    return;
  } else {
    int currentTime = millis() - startTime;
    println(currentTime);
    if (currentTime >= levelTime){
      win();
      return;
    }
    text(currentTime, 70, 50);
    int posx = 60;
    int posy = 130;
    rectMode(CORNER);
    grid(100, 100, 580, 100, 100, 100, 100, 580);
    up = false;
    for (laser b : LaserList) {
      b.drawLaser(posx, posy, chance, laser0Right, laser1Right, laser2Right, up, laserBeam, chargeTime);
      posy = posy + 60;
    }

    posx = 130;
    posy = 620;
    up = true;
    for (laser c : LaserList2) {
      c.drawLaser(posx, posy, chance, laser0Up, laser1Up, laser2Up, up, laserBeamUp, chargeTime);
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

void obstacle() {
}
void mouseClicked() {

  if (mouseX >= 300 && mouseX <= 380 && mouseY >= 355 && mouseY <= 405 && mainMenu == true) {
    mainMenu = false;
    startTime = millis();
    return;
  }
  if (mouseX >= 240 && mouseX <= 440 && mouseY >= 385 && mouseY <= 435 && dead == true) {
    dead = false;
    startTime = millis();
    return;
  }
  if (mouseX >= 240 && mouseX <= 440 && mouseY >= 285 && mouseY <= 335 && mainMenu == true) {
    levels = true;
    mainMenu = false;
    return;
  }
  if (mouseX >= 295 && mouseX <= 385 && mouseY >= 295 && mouseY <= 345 && levels == true) {
    levels = false;
    mainMenu = true;
    return;
  }
  if (mouseX >= 195 && mouseX <= 245 && mouseY >= 235 && mouseY <= 285 && levels == true && highestLvl >= 1) {
    selectedLvl = 1;
    return;
  }
  if (mouseX >= 255 && mouseX <= 305 && mouseY >= 235 && mouseY <= 285 && levels == true && highestLvl >= 2) {
    selectedLvl = 2;
    return;
  }
  if (mouseX >= 315 && mouseX <= 365 && mouseY >= 235 && mouseY <= 285 && levels == true && highestLvl >= 3) {
    selectedLvl = 3;
    return;
  }
  if (mouseX >= 375 && mouseX <= 425 && mouseY >= 235 && mouseY <= 285 && levels == true && highestLvl >= 4) {
    selectedLvl = 4;
    return;
  }
  if (mouseX >= 435 && mouseX <= 485 && mouseY >= 235 && mouseY <= 285 && levels == true && highestLvl >= 5) {
    selectedLvl = 5;
    return;
  }
  
}
