class button{
  
  float buttonX, buttonY,buttonW, buttonH;
  boolean option;
  String text;
  button(float x, float y, float w, float h, String t, boolean o){
    buttonX = x;
    buttonY = y;
    buttonW = w;
    buttonH = h;
    text = t;
    option = o;
    
    
  }
  
  
  void drawButton(){
    rect(buttonX, buttonY, buttonW, buttonH);
    text(text, buttonX, buttonY+10);
  }
  
  void buttonClicked(){
    if(mouseX > buttonX - buttonH/2 && mouseX < buttonX + buttonH/2 && mouseY > buttonY - buttonW/2 && mouseY < buttonY + buttonW/2){
      dead = false;
      mainMenu = false;
      levels = false;
      option = true;
      
    }
  }
}
