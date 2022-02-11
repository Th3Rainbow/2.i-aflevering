class button{
  
  float buttonX, buttonY,buttonW, buttonH;
  String text;
  button(float x, float y, float w, float h, String t){
    buttonX = x;
    buttonY = y;
    buttonW = w;
    buttonH = h;
    text = t;
    
    
  }
  
  
  void drawButton(){
    rect(buttonX, buttonY, buttonW, buttonH);
    text(text, buttonX, buttonY+10);
    //if()
  
  }
}
