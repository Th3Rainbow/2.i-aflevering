public class Stones {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int N = in.getInt();
      if(N % 2 == 0){
        in.println("Bob");
      }else{
        in.println("Alice");
      }
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
