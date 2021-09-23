public class LinkedList {

  Node first;

  void addTal(int v){
    Node n = new Node();
    n.value = v;

    if(first ==null){
      first = n;
    }else{
      while(n.next != null){
        System.out.println("1");
      }
    }
  }
}
