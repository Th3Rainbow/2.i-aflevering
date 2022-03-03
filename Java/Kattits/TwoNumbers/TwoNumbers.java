public class TwoNumbers {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int[] numbers = {in.getInt(), in.getInt()};
      if(numbers[0] > numbers[1]){
        int a = numbers[1];
        numbers[1] = numbers[0];
        numbers[0] = a;
      }
      in.println(numbers[0]);
      in.println(numbers[1]);
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
