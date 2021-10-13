int f = int(random(1, 10));
int s = int(random(1, 10));
int p = 5;

void setup(){
  size(200, 200);
  println(p);
  println(s);
  println(f + " = " + factorial(f));
}


void draw(){
  
  /*1. Lav en funktion, der modtager et heltal "n"
       Og udskriver alle hele positive tal fra n og nedefter i din konsol
       Dvs. for n=5 udskrives 5 4 3 2 1 */
       plus(p);
  
  /*2. Lav en funktion, der modtager et heltal "n"
       Og tegner det antal firkanter der svarer til n */
       squares(s);
       
  /*3. Lav en funktion, der modtager et heltal "n"
       Og returnerer fakultet af tallet, dvs !n
       Dvs. for n=3 returneres 3*2*1 dvs. 6 */
       factorial(f);
}

void plus(int p){
  if (p > 0){
    fill(0);
    text("+ " + p, 10+p*20, 15);
    plus(p-1);
  }
}


void squares(int s){
  if (s > 0){
  rect(10+s*15, 40, 10, 10);
  fill(0);
  text(s, 10+s*15, 65);
  squares(s-1);
  }
}


int factorial(int f){
  if (f > 10) return 0;
  if (f == 1)return 1;
  
  return f * factorial(f - 1);
}
