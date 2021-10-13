public class Binarytree{
  int a = sum(3);

  public static void main(String[] args) {
  System.out.println(sum(3));
  }

  public int sum(int k){
    if (k > 0) {
      return k + sum(k - 1);
    }else {
      return 0;
    }
  }
}
