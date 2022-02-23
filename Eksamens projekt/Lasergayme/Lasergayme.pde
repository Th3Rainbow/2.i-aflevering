button playButton;
button levelsButton;

button level1;
button level2;
button level3;
button level4;
button level5;

button back;

button retry;
button main;

button next;

obstacle ob;

int pX1 = 130; //Player x1
int pY1 = 130; // Player y1
int chance = 2000; // chance for each laser to shoot each frame

int currentLvl = 1; // current level
int highestLvl = 0; // highest lvl reached
int chargeTime = 2000; // time for laser to charge
int selectedLvl = 1; // selected lvl

int levelTime; // how long the level is
int startTime; // used for timing

int obstacleTime;

boolean obstacle = false; // if the current level has obstacles
boolean shoot = false; // if laser shoots
boolean up = false; // if laser points up
boolean clickable = true;

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
ArrayList <obstacle> ObstacleList = new ArrayList <obstacle>();

player a = new player(pX1, pY1); // constructor til player

void setup() {
  frameRate(120); // framerate
  size(680, 680); 
  ob = new obstacle(900, 900);
  ObstacleList.add(ob);
  startTime = millis(); // start timer
  obstacleTime  = millis();
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
    int currentTimer = millis() - obstacleTime;
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
    //println((a.x1 -130) /60);
    if (obstacle == true) {
      rectMode(CENTER);
      if (currentTimer >= 10000) {
        obstacleTime = millis();
        int randomX = int(random(0, 8));
        int randomY = int(random(0, 8));
        if ((a.x1 -130) / 60 == randomX) {
          if (randomX == 7) {
            randomX--;
          } else if (randomX == 0) {
            randomX++;
          }
        } else if ((a.x2 -130 / 60) == randomY) {
          if (randomY == 7) {
            randomY--;
          } else if (randomY == 0) {
            randomY++;
          }
        }
        int obstacleX = randomX * 60 + 130;
        int obstacleY = randomY * 60 + 130;
        ob = new obstacle(obstacleX, obstacleY);
        ObstacleList.add(ob);
      }

      for (obstacle ob : ObstacleList) {
        ob.render();
      }
    }
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

void mouseReleased() {
  clickable = true;
}
