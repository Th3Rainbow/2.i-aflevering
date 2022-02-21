
  void mainMenu(){
    button p = new button(340, 380, 80, 50, "play", mainMenu);
    fill(0, 0, 0);
    text("MainMenu", 340, 250);
    noFill();
    rect(340, 310, 200, 50);
    text("Levels", 340, 320);
    text(mouseX + " " + mouseY, mouseX, mouseY);
    p.drawButton();
}
