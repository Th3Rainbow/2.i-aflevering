
void dead(int time, int score) { // funktion til at vise dead skærmen
  if (takeScore == true) {
    score = time;
    switch(selectedLvl) {
    case 1:
      if (score > highscore1) {
        highscore1 = score;
      }
      break;

    case 2: 
      if (score > highscore2) {
        highscore2 = score;
      }
      break;

    case 3: 
      if (score > highscore3) {
        highscore3 = score;
      }
      break;

    case 4: 
      if (score > highscore4) {
        highscore4 = score;
      }
      break;

    case 5: 
      if (score > highscore5) {
        highscore5 = score;
      }
      break;
    }

    takeScore = false;
  }
  retry = new button(340, 410, 200, 50, "Retry level");
  main = new button(340, 340, 200, 50, "Mainmenu");

  retry.render();
  retry.update();

  main.render();
  main.update();
  switch(selectedLvl) {
  case 1:
  text("your highscore " + highscore1/1000, 340, 200);
    break;
    
  case 2:
  text("your highscore " + highscore2/1000, 340, 200);
    break;
    
  case 3:
  text("your highscore " + highscore3/1000, 340, 200);
    break;
    
  case 4:
  text("your highscore " + highscore4/1000, 340, 200);
    break;
    
  case 5:
  text("your highscore " + highscore5/1000, 340, 200);
    break;
  }
  
  text("YOU DIED!", 340, 280);
  //text(mouseX + " " + mouseY, mouseX, mouseY);
  if (main.isClicked() == true && clickable == true) {
    mainMenu = true;
    dead = false;
    clickable = false;
  }

  if (retry.isClicked() == true && clickable == true) {
    reset();
    dead = false;
    startTime = millis();
    obstacleTime = millis();
    shoot = false;
    ObstacleList.clear();
    clickable = false;
  }
}
