void setup() { 
  size(500, 500); // laver skærmen til at være 500x500
  line(250, 500, 250, 400); // laver starter linjen
  tegnGren(new PVector(250, 400), new PVector(0, -100), PI/8); // kalder funktionen til at lave en gren
  tegnGren(new PVector(250, 400), new PVector(0, -100), -PI/8); // kalder funtionen til at lave en gren
}

void tegnGren(PVector lastPos, PVector lastVec, float v) { // funktion til at lave en gren
  if (lastVec.mag() >= 20) { // hvis længden af den sidste vector er mindre en 20 skal vi ikke kører funktionen
    PVector p = lastVec.copy(); // laver en copy af den gamle vector 
    p.rotate(v); // roterer den nye vector med v
    p.mult(0.8); // mupliplicere den nye vector med 0.8 for at kun er 80% så stor
    PVector newPos = PVector.add(lastPos, p); // finder de nye positioner for x og y ved at addere den nye vector med den gamle
    line(lastPos, newPos); // funktion til at lave en linje ud fra 2 vectorere 
    tegnGren(newPos, p, v * 0.9); // kalder funktionen igen med en anden vinkel
    tegnGren(newPos, p, -v * 0.9);
  }
}

void line(PVector a, PVector b) { // funktion til at lave en lunje ud fra 2 vectorere 
  line(a.x, a.y, b.x, b.y); // laver en linje ud fra de 2 vectorere
}
