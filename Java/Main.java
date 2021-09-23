public class Main {

  public static void main(String[] args) {
    LinkedList coolList = new LinkedList();
    Node n1 = new Node();
    n1.value = 1;
    Node n2 = new Node();
    n2.value = 2;
    Node n3 = new Node();
    n3.value = 3;

    n1.next = n2;
    n2.next = n3;
    n3.next = null;
  }
}
