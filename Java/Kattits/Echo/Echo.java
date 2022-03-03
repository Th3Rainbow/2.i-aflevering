public class Echo {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int echoes = in.getInt();
        while(in.hasMoreTokens()){
          for(int i = 0; i < echoes; i++){
            String a = in.getWord();
          if(i % 2 == 0){
            in.println(a);
          }
        }
      }
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
