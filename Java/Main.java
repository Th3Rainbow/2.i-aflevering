public class Main {

  public static void main(String[] args) {
    LinkedList coolList = new LinkedList();
    coolList.first = new Node(20, null);
    coolList.addTal(30);
    coolList.addTal(40);
    coolList.addTal(50);
    coolList.setFirst(10);
    coolList.PrintAll();
  }
}
