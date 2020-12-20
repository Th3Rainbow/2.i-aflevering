String[] kort={"hjerter", "ruder", "spar", "klør"};
String kortType = "";

int type = int (random(1,5));

switch(type){
case 1:
 kortType = kort[0];
 break;
 
case 2:
 kortType = kort[1];
 break;
 
case 3:
 kortType = kort[2];
 break;
 
case 4:
 kortType = kort[3];
 break;
}
println(type + kortType);

int tal = int (random(1,14));
println( tal);
