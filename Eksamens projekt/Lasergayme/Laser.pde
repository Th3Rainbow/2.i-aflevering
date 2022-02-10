class laser {
  boolean shoot = false;
  float random;
  int startTime1 = millis();
  laser() {
  }
  void drawLaser(float posx, float posy, float chance) {
    if (shoot == false) {
      random = int(random(0, chance));
    }
    rectMode(CENTER);
    rect(posx, posy, 50, 50);
    if (random == 50) {
      shoot = true;
     // println("charge");
      laserShoot(posx, posy);
    }
  }

  void laserShoot(float x, float y) {
    int currentTime1 = millis() - startTime1;
    //println(currentTime1);
    if (currentTime1 < 2000) {
      fill(255, 0, 0);
      rect(x, y, 50, 50);
    } else if (currentTime1 > 2000 && currentTime1 < 3000) {
      fill(255, 0, 0);
      rect(340, y, 480, 50);
    } else {
      startTime1 = millis();
      shoot = false;
    }
    noFill();
  }











  /* void laserShoot(float x, float y) {
   if (laserCharge(x, y) == true) {
   int currentTime1 = millis() - startTime1;
   if ( currentTime1 < 4000) {
   rect(340, y )
   println("pew");
   } else {
   startTime1 = millis();
   startTime2 = millis();
   shoot = false;
   }
   }
   }
   boolean laserCharge(float x, float y) {
   int currentTime2 = millis() - startTime2;
   while (currentTime2 < 2000) {
   println("charing");
   fill(255, 0, 0);
   rect(x, y, 50, 50);
   noFill();
   return false;
   }
   return true;
   }*/
}
