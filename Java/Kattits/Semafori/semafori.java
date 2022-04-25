public class semafori {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int N = in.getInt();
      int L = in.getInt();
      int X = 0;
      int finalTime = 0;
      int D = in.getInt();
      int R = in.getInt();
      int G = in.getInt();
      while(X < L){
        if(X == D){
          if(!(finalTime % (R + G) < R)){
            X++;
            if(in.hasMoreTokens()){
              D = in.getInt();
              R = in.getInt();
              G = in.getInt();
            }
          }
        }else{
          X++;
        }
        finalTime++;
      }
      in.println(finalTime);
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
