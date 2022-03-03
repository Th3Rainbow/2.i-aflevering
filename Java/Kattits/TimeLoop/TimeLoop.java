public class TimeLoop {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int N = in.getInt();
      for(int i = 1; i < N + 1; i++){
        in.println(i + " Abracadabra");
      }
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
