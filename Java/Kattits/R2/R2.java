public class R2 {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int r1 = in.getInt();
      int s = in.getInt();
      int r2 = (s * 2) - r1;
      in.println(r2);
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
