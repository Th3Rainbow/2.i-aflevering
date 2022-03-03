public class Tarifa {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int p = 0;
      int data = in.getInt();
      int N = in.getInt();
      for(int i = 0; i < N ; i++){
        p += data - in.getInt();
      }
      in.println(p + data);
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
