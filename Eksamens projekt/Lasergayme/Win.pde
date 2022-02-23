
  void win(){
    
    main = new button(340, 340, 200, 50, "Mainmenu");
    next = new button(340, 400, 200, 50, "Next level");
    
    main.render();
    main.update();
    
    next.render();
    next.update();
    
    if (highestLvl < selectedLvl){
        highestLvl = selectedLvl;
    }
    
    if(main.isClicked() == true && clickable == true){
      mainMenu = true;
      dead = false;
      clickable = false;
    }
    
    if(next.isClicked() == true && clickable == true){
      startTime = millis();
      obstacleTime = millis();
      ObstacleList.clear();
      reset();
      selectedLvl++;
      clickable = false;
    }
    text("Level " + selectedLvl + " completed!",340 ,290);
    
  }
