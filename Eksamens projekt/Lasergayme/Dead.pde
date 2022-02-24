
  void dead(){ // funktion til at vise dead skærmen
  retry = new button(340, 410, 200, 50, "Retry level");
  main = new button(340, 340, 200, 50, "Mainmenu");
  
  retry.render();
  retry.update();
  
  main.render();
  main.update();
  
    text("YOU DIED!", 340, 280);
    //text(mouseX + " " + mouseY, mouseX, mouseY);
    if(main.isClicked() == true && clickable == true){
      mainMenu = true;
      dead = false;
      clickable = false;
    }
    
    if(retry.isClicked() == true && clickable == true){
      reset();
      dead = false;
      startTime = millis();
      obstacleTime = millis();
      shoot = false;
      ObstacleList.clear();
      clickable = false;
    }
  }
