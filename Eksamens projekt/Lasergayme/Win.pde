
  void win(){
    rect(340, 340, 200, 50);
    rect(340, 400, 200, 50);
    text("YOU WON!",340, 350);
    text("Next level",340, 410);
    
    
    if (highestLvl < selectedLvl){
        highestLvl = selectedLvl+1;
    }
  }
