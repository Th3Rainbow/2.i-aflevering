public class Triangle {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int h = in.getInt();
      int b = in. getInt();
      in. println(h*b*0.5);
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
