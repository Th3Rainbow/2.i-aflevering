public class LinkedList {

  Node first;

  public void addTal(int value){
    getLast().next = new Node(value, null);

    }
  public Node getLast() {
      Node current = first;
      while(current.next != null){
        current = current.next;
      }
      return current;
    }

  public void PrintAll(){
      Node current = first;
      System.out.println("[" + current.value +"]");
        while(current.next != null){
          current = current.next;
            System.out.println("[" + current.value +"]");

      }
    }

  public void setFirst(int value){
    Node n = new Node(value, null);
    n.next = first;
    first = n;
    }
  }
