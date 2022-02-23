class obstacle {
  int x, y;

  obstacle(int obstacleX, int obstacleY) {
    x = obstacleX;
    y = obstacleY;
  }

  void render() {
    fill(0, 0, 0);
    rect(x, y, 50, 50);
    noFill();
  }

  boolean checkCollision(char key) {
    if(key == 'w' && a.x2 - 60 == y){
      return false;
    }
 return true;
   
  }
}
