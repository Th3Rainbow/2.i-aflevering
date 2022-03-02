

public class HomeWork {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int Answer = 0;
      while(in.hasMoreTokens()){
        String text = in.getWord();
        for(int i = 0; i < text.length(); i++){
          char current = text.charAt(i);
          if(current >= 0 && current <= 9){
            Answer++;
          }
        }
      }
      in.println(Answer);
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
