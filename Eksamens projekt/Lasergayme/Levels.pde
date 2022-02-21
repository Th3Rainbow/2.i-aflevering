  
  void levels(){
    
    int num = 1;
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
  
  void checkLevel(){
    switch(selectedLvl){
     case 1:
       levelTime = 20000;
       chargeTime = 2000;
       chance = 2000;
       
       print("level " + selectedLvl + " valgt");
       print("levelTime = " + levelTime);
       print("chargeTime = " + chargeTime);
       break;
         
     case 2:
       levelTime = 45000;
       chargeTime = 1750;
       chance = 1600;
       
       print("level " + selectedLvl + " valgt");
       print("levelTime = " + levelTime);
       print("chargeTime = " + chargeTime);
       break;
       
     case 3:
       levelTime = 70000;
       chargeTime = 1500;
       chance = 1300;
       obstacle = true;
       
       print("level " + selectedLvl + " valgt");
       print("levelTime = " + levelTime);
       print("chargeTime = " + chargeTime);
       break;
       
     case 4:
       levelTime = 95000;
       chargeTime = 1250;
       chance = 1000;
       
       print("level " + selectedLvl + " valgt");
       print("levelTime = " + levelTime);
       print("chargeTime = " + chargeTime);
       break;
       
     case 5:
     chance = 1000;
     chargeTime = 1000;
     levelTime = 120000;
       
       print("level " + selectedLvl + " valgt");
       print("levelTime = " + levelTime);
       print("chargeTime = " + chargeTime);
       break; 
    }
  }
