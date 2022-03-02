public class Autori {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      String a = in.getWord();
      boolean useChar = true;
      String Answer = "";
    //  String Answer;
      char current;
      for(int i = 0; i < a.length(); i++){
        current = a.charAt(i);
        if(useChar){
          Answer = Answer + current;
          useChar = false;
        } else if(current == '-'){
          useChar = true;
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
