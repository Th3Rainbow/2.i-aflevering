class player {

  float x1, x2;
  player(float x, float y) {
    x1 = x;
    x2 = y;
  }
  void movePlayer(char key) {
    if (key == 'w') {
      if (x2 < 160) {
      } else {
        x2 = x2 -60;
      }
    }
    if (key == 'a') {
      if (x1 < 160) {
      } else {
        x1 = x1 -60;
      }
    }
    if (key == 's') {
      if (x2 > 520) {
      } else {
        x2 = x2 +60;
      }
    }
    if (key == 'd') {
      if (x1 > 520) {
      } else {
        x1 = x1 +60;
      }
    }
  }

  void drawPlayer(PImage player) {
    imageMode(CENTER);
    image(player, x1+1, x2+3);
  }
}
