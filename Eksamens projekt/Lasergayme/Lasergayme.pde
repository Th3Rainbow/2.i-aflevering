int pX1 = 130; //Player x1
int pY1 = 130; // Player y1
int chance = 2000; // chance for each laser to shoot each frame

int currentLvl = 1; // current level
int highestLvl = 1; // highest lvl reached
int chargeTime = 2000; // time for laser to charge
int selectedLvl = 1; // selected lvl

int levelTime; // how long the level is
int startTime; // used for timing

boolean obstacle = false; // if the current level has obstacles
boolean shoot = false; // if laser shoots
boolean up = false; // if laser points up

boolean mainMenu = true; // mainMenu option
boolean dead = false; // dead option
boolean levels = false; // levels option

// different images
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

ArrayList <laser> LaserList = new ArrayList <laser> (); // array til lasere
ArrayList <laser> LaserList2 = new ArrayList <laser> (); // array til lasere

player a = new player(pX1, pY1); // constructor til player

void setup() {
  frameRate(120); // framerate
  size(680, 680); 
  startTime = millis(); // start timer
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
  for (float o = 0; o<8; o++) { // for loop der tegner de lasere til venstre
    laser b = new laser(); // laver 8 lasere
    LaserList.add(b); // tilføjer dem til arraylisten
  }
  for (float o = 0; o<8; o++) { // for loop det tegner de lasere i bunden
    laser c = new laser(); // laver 8 lasere
    LaserList2.add(c); // tilføjer dem til arraylisten
  }
}

void draw() {
  clear();
  background(255, 255, 255);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(40);
  if (mainMenu == true) { // mainmenu // tjekker om main menu skal vises
    mainMenu();
    return; // går ud af draw for ikke at køre mere kode
  } else if (dead == true) { //dead // tjekker om dead skal vises
    dead();
    return;
  } else if (levels == true) { //levels // tjekker om levels skal vises
    levels();
    return;
  } else {
    checkLevel();
    int currentTime = millis() - startTime; // starter timeren
    if (currentTime >= levelTime) { // tjekker om dette level er færdigt
      win(); // går til win skærmen
      return;
    }
    text(currentTime, 70, 50); // skriver nuværende spille tid
    int posx = 60; // sætter pos for den først laser
    int posy = 130; 
    rectMode(CORNER);
    grid(100, 100, 580, 100, 100, 100, 100, 580); // funktion til at lave grid
    up = false; // sætter laserne til at vende til højre
    for (laser b : LaserList) { // for loop som går igennem alle laserne 
      b.drawLaser(posx, posy, chance, laser0Right, laser1Right, laser2Right, up, laserBeam, chargeTime); // tegner laserne 
      posy = posy + 60;
    }

    posx = 130; // sætter startværdier for den først laser
    posy = 620;
    up = true; // sætter laserne til at vende op
    for (laser c : LaserList2) { // for loop som går igennem alle laserne
      c.drawLaser(posx, posy, chance, laser0Up, laser1Up, laser2Up, up, laserBeamUp, chargeTime); // tegner laserne
      posx = posx + 60;
    }
    a.drawPlayer(player); // tegner playeren
    fill(0, 0, 0);
    // text(mouseX + " " + mouseY, mouseX, mouseY);
    noFill();
  }
}

void keyPressed() { // funktion som tjekker om musen bliver trykket
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

void obstacle() {
}
void mouseClicked() {

 /* if (mouseX >= 300 && mouseX <= 380 && mouseY >= 355 && mouseY <= 405 && mainMenu == true) {
    mainMenu = false;
    startTime = millis();
    return;
  } */
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
