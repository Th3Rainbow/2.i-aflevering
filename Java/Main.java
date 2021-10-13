import java.lang.Math;

public class Main {

  public static void main(String[] args) {
    LinkedList coolList = new LinkedList();
    coolList.addTal((int)(Math.random()*100 ));
    coolList.addTal((int)(Math.random()*100 ));
    coolList.addTal((int)(Math.random()*100 ));
    coolList.setFirst((int)(Math.random()*100 ));
    coolList.printAll();
    System.out.println("--------");

    coolList.setFirst((int)(Math.random()*100 ));
    coolList.addTal((int)(Math.random()*100 ));
    coolList.insert((int)(Math.random()*100 ), 5);
    coolList.printAll();
    coolList.printBiggest();
    coolList.printSmallest();
  }
}
