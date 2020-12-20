int max = 150;
float x1;
float y1;
float x;
float y;

float L;
float g = 9.82;
float t = 0;
float E;
float m = 1;
float A;
float v;
float u;

void boldThrow(){
  PVector sling = new PVector(mouseX - 195,mouseY - 890);
  sling.limit(150);
  if (mousePressed){
    circle(sling.x, sling.y, 10); 
    x1 = sling.x;
    y1 = sling.y;
    x = sling.x;
    y = sling.y;
    L =dist(x, y, 0, 0);
    E = 50*(L*L);
    A = sling.heading(); 
    v = A * sqrt(2 * E/m + (1 + (A*A)));
    u = sqrt((2*E)/(m*(1+(A*A))));
    t = 0;
    }else{
      
      t = t + 0.005;
      x = u * t + ((-x1*-x1));
      y = -0.5 * g * (t*t) + v * t + y1;
      y = y * (-1);
      circle(x,y,10);
      
      println ((x) + " =" + (u) + " * " + (t)+ " + (" + (x1) + "*" + (x1));
      println("x" + mouseX);
    }
  }
  
void sling(){
translate(195,890);
 PVector sling = new PVector(mouseX - 195,mouseY - 890);
 sling.limit(max);
 if (mousePressed){
 sling.limit(150);
 line(0 ,0 , sling.x, sling.y);   
 }
} 
