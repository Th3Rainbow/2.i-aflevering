public class PowerOutlet {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
      int A = in.getInt();
      int input = 0;
      int[] Answer = new int[A];
      while(in.hasMoreTokens() == true){
        for(int i = 0; i < A; i++){
          int N = in.getInt();
            for(int o = 0; o < N; o++){
              input = in.getInt();
              if(o == N-1){
                Answer[i] = Answer[i] + input;
              }else{
                Answer[i] = Answer[i] + (input-1);
                }
              }
              in.println(Answer[i]);
            }
          }
      in.close();
    } catch(Exception e){
    e.printStackTrace();
      }
  }
}
