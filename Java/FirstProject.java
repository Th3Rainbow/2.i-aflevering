import java.util.Arrays;
import java.lang.Math;
public class FirstProject{
  public static void main(String[] args){
    int[] tal = {1, 5, 13, 20, 22, 26, 30, 31, 33, 45, 46, 49, 51, 54, 57, 60, 67, 70, 78, 83, 92, 100};
    // Array med tal
    int Choosen = 100;
    // Tal der skal findes
    int Min = 0;
    int Max = tal.length;
    // Max og Min tal i rækken
    int Halfindex = tal.length/2;
    // Midtertal
    int Index = -1;
    int Stop = 0;

        while (Index == -1){
        if (Stop > 10){
          System.out.print("The number does not exist");
          break;
        }
        // While loope der slutter hvis stop er over 10
        if(Choosen == tal[Halfindex]){ // Tjekker om gætter er rigtigt
          Index = Halfindex;  // Sætter index til det tal der er gættet på
          System.out.print("Found it " + tal[Index] + " its number " + Index);
          break; // Går ud af while loop
        } else{
          if(tal[Halfindex] < Choosen){ // Hvis tallet er større end gættet sæt min til det tal der er gættet
            Min = Halfindex;
          } else{ // Hvis taller er mindre sæt Max til det tal der er gættet
            Max = Halfindex;
            }
        }
        Halfindex = (Min+Max)/2; // Udregner halvdelen af talrækken

        if (Min +1 == Max){ // tjekker om Min og Max er 1 væk fra hinanden
          Stop = Stop +1; // Hvis ja sættes stop til 1 mere
          }
        }
      }
    }
