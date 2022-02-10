  
  void levels(){
    int num = 1;
    rect(340, 140, 240, 50);
    rect(340, 200, 50, 50);
    rect(340, 320, 90, 50);
    text(selectedLvl, 340, 210);
    text("selectedLevel", 340, 150);
    text("Back", 340, 330);
    text(mouseX + " " + mouseY, mouseX, mouseY);
    
    for(int i = 220 ; i<520; i = i + 60){
      rect(i, 260, 50, 50);
      text(num, i, 270);
      num++;
      
    }
  }
