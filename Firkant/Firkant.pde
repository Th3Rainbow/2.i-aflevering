int x = 60;
int y = 60;
float w = 50;
float repeat = 16;
float c1 = 0;

void setup(){
colorMode(HSB,360);
size(1000,1000);
}

void draw(){
float c = 0;
  clear();
    for(x = 60; x <= 60 * repeat; x = x +60){
      for(y = 60; y <= 60 * repeat; y = y +60){
        c += 1;
        rectMode(CENTER);
        fill(c,360,360);
        rect(x ,y ,w = random(10,50) ,w = random(10,50));
        println(c1);
    }
  }
}
