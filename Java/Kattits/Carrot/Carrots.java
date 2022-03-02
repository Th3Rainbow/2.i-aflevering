public class Carrots {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      in.getInt();
      int carrots = in.getInt();
      in.println(carrots);
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
