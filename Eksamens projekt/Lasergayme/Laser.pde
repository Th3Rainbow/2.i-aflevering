class laser {
  boolean shoot = false;
  float random;
  int startTime1 = millis();
  laser() {
  }
  void drawLaser(float posx, float posy, float chance, PImage L0, PImage L1, PImage L2, boolean up, PImage laser) {
    if (shoot == false) {
      random = int(random(0, chance));
      startTime1 = millis();
    }
    imageMode(CENTER);
    rectMode(CENTER);
    image(L0, posx, posy);
    if (random == 50) {
      shoot = true;
     // println("charge");
      laserShoot(posx, posy, L1, L2, laser, up);
    }
  }

  void laserShoot(float x, float y, PImage L1, PImage L2, PImage laser, boolean up){
    int currentTime1 = millis() - startTime1;
    println(currentTime1);
    if (currentTime1 < 2000) {
      fill(255, 0, 0);
      image(L1, x, y);
    } else if (currentTime1 >= 2000 && currentTime1 <= 3000) {
      fill(255, 0, 0);
      if (up == true){
        if (a.x1 == x){
         dead = true; 
        }
        image(laser, x, 350);
      }else{
      image(laser, 330, y);
      if (a.x2 == y){
        dead = true;
      }
      }
      image(L2, x, y);
    } else if (currentTime1 > 3000){
      shoot = false;
      startTime1 = millis();
      println("reset");
    }
    noFill();
  }
}
