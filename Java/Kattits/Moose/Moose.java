public class Moose {

  public static void main(String[] args) {
    try{
      Kattio in = new Kattio(System.in, System.out);
    int a = in.getInt();
    int b = in.getInt();
    if(a == b){
      if(a != 0){
        int c = a*2;
        in.println("Even " + c);
      }else{
        in.println("Not a moose");
      }
    }
    if(a !=b){
      if (a >b){
        int c = a*2;
        in.println("Odd " + c);
      }else{
        int c = b*2;
        in.println("Odd " + c);
      }
    }
      in.close();
      }
      catch(Exception e){
        e.printStackTrace();
      }
    }
  }
