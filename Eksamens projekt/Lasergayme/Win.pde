
  void win(){
    rect(340, 400, 200, 50);
    text("Level " + selectedLvl + " completed!",340 ,290);
    text("YOU WON!",340, 350);
    text("Next level",340, 410);
    
    
    if (highestLvl < selectedLvl){
        highestLvl = selectedLvl+1;
    }
  }
