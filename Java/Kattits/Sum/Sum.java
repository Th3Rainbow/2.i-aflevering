public class Sum {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int a = in.getInt();
      int b = in.getInt();
      in.println(a+b);
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
