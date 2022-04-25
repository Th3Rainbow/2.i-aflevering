public class Greater {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int a = in.getInt();
      int b = in.getInt();
      if(a <= b){
        in.println(0);
      }else{
        in.println(1);
      }
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
