public class Echo {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      String word = in.getWord();
      for(int i = 0; i < 3; i++){
        in.println(word);
      }
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
