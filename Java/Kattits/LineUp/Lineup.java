import java.util.ArrayList;

public class Lineup {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      ArrayList<String> navne = new ArrayList<String>();
      int x = in.getInt();
      int answer = 0;
        while(in.hasMoreTokens()){
          navne.add(in.getWord());
        }
        for(int i = 0; i < navne.size()-1; i++){
          String a = navne.get(i);
          String b = navne.get(i+1);
          int c = a.compareTo(b);
          if(c > 0){
            answer -= 1;
          }else{
            answer += 1;
          }
        }
        if(answer == x-1){
          in.println("INCREASING");
        }
        if (answer == -(x-1)){
          in.println("DECREASING");
        }if (answer != -(x-1) && answer != x-1){
          in.println("NEITHER");
        }


      /*in.println(navne);
      String a = "ab";
      String b = "ae";
      int c = a.compareTo(b);
      in.println(c);*/
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
