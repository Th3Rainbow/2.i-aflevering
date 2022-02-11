
  void mainMenu(){
    fill(0, 0, 0);
    text("MainMenu", 340, 250);
    text("Play", 340, 390);
    noFill();
    rect(340, 310, 200, 50);
    rect(340, 380, 80, 50);
    text("Levels", 340, 320);
    text(mouseX + " " + mouseY, mouseX, mouseY);
}
