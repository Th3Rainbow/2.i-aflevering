import java.util.Random;
import java.util.Arrays;

public class AlgoritmeAnalyse{

  public static void main(String[] args){
    int lengthArray     = Integer.parseInt(args[0]);
    int numberOfArrays  = Integer.parseInt(args[1]);
    System.out.println(lengthArray + " " + numberOfArrays);

    for(int j=0; j < numberOfArrays; j++){
      int[] list = AlgoritmeAnalyse.generateRandomArray(lengthArray);
      System.out.println(" sorteringstid " + beregnSorteringsTid(list) + "\n");
      //sort og tag tid
    }
  }

  public static int[] generateRandomArray(int lengthArray){
    int[] liste = new int[lengthArray];
    Random random = new Random();

    for(int i =0; i < lengthArray; i++){
      liste[i] = random.nextInt(lengthArray) + 1;
    }

    return liste;
  }

public static long beregnSorteringsTid(int[] list){
  long start = System.nanoTime();
  sorteringAfTal(list);
  long finish = System.nanoTime();
  long timeElapsed = finish - start;
  printArray(list);
  return timeElapsed;
}

public static void sorteringAfTal(int[] list){
  Arrays.sort(list);
}

public static void printArray(int[] list){
  System.out.print("Soted array: ");
    for(int i : list){
      System.out.print(i + " ");

    }
}




}
