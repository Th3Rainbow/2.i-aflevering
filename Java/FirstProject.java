import java.util.Arrays;
import java.lang.Math;
public class FirstProject{
  public static void main(String[] args){
    int[] tal = {1, 5, 13, 20, 22, 26, 30, 31, 33, 45, 46, 49, 51, 54, 57, 60, 67, 70, 78, 83, 92, 100};
    int Choosen = 100;
    int Min = 0;
    int Halfindex = tal.length/2;
    int Max = tal.length;
    int Index = -1;
    int Stop = 0;

        while (Index == -1){
        if (Stop > 10){
          System.out.print("The number does not exist");
          break;
        }
        if(Choosen == tal[Halfindex]){
          Index = Halfindex;
          System.out.print("Found it " + tal[Index] + " its number " + Index);
          break;
        } else{
          if(tal[Halfindex] < Choosen){
            Min = Halfindex;
          } else{
            Max = Halfindex;
            }
        }
        Halfindex = (Min+Max)/2;

        if (Min +1 == Max){
          Stop = Stop +1;
        }
       }

      }
    }
