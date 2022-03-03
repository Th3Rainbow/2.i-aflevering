public class HomeWork {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int Answer = 0;
      while(in.hasMoreTokens()){
        String str = in.getWord();
        String[] arrSplit = str.split(";");
        for(int i = 0; i < arrSplit.length; i++){
          if(arrSplit[i].contains("-")){
            String[] arrSplit2 = arrSplit[i].split("-");
              Answer += Integer.parseInt(arrSplit2[1]) - Integer.parseInt(arrSplit2[0]);
          }
          Answer++;
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
