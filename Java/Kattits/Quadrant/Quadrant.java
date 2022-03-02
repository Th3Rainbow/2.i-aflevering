public class Quadrant {
  public static void main(String[] args) {
    try{
    Kattio in = new Kattio(System.in, System.out);
    int quad = 0;

    int x = in.getInt();
    int y = in.getInt();

    if(x > 0 && y > 0){
      quad = 1;
    } else if(x < 0 && y > 0){
      quad = 2;
    } else if(x < 0 && y < 0){
      quad = 3;
    } else if(x > 0 && y < 0){
      quad = 4;
    }
    in.println(quad);
    in.close();
    } catch(Exception e){
    e.printStackTrace();
      }
    }
  }
