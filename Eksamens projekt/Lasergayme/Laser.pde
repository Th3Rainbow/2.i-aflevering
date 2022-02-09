class laser {



  void drawlaser(float firstX, float firstY) {
    rectMode(CENTER);
    for (int i = 0; i <2; i++) {
      for (int o = 0; o < 8; o++) {
        rect(firstX, firstY, 50, 50);
        firstY = firstY + 60;
      }
      firstX = 640;
      firstY = 130;
    }
  }

  boolean lasercharge() {
    long timer = 0;
    timer = millis();
    if (timer == 2000) {
      return true;
    }
    return false;
  }

  void laserShoot(int id) {
  }
}
