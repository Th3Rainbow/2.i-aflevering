

public class LinkedList {

  public int biggestValue = Integer.MIN_VALUE; // sætter biggest value til den mindste der findes
  public int smallestValue = Integer.MAX_VALUE; // sætter smallest value til den største der findes
  Node first;

  public void addTal(int value){ // funktion til at sætte tal bagerst på listen
    if(first == null){
      checkEmpty(value);
    }else {
      getLast().next = new Node(value, null); // Laver en node baggerst på listen
      System.out.println("put " + value + " last");
      checkBiggest(value);
      checkSmallest(value);
      }
    }

  public Node getLast() { // funtion til at finde den sidste node i listen
      Node current = first; // vælger den første node
      while(current.next != null){ // kører så længe den næste node findes
        current = current.next; // sætter den nodevi har til dens egen næste node
      }
      return current; // sender den sidste node til addTal
    }

  public void printAll(){ // funtion til at printe alle noder
      int number = 1;
      Node current = first; // vælger den første node
      System.out.println( number +" [" + current.value +"]");
    while(current.next != null){ // kører så længe den næste node findes
      current = current.next; // sætter den node vi har til dens egen næste
      number = number + 1;
      System.out.println( number +" [" + current.value +"]");
      }
    }

  public void setFirst(int value){ // funktion til at lave en node i starten af listen
    if(first == null){
      checkEmpty(value);
    }else {
    Node n = new Node(value, null); // laver en ny node med value
    System.out.println("Put " + value + " First");
    checkBiggest(value);
    checkSmallest(value);
    n.next = first; // sætter nodens næste node til den første
    first = n; // sætter den første node til n
      }
    }

    public void insert(int value, int place){ // funktion til at insert en node i place sted

      if(first == null){ // tjekker om der findes en første node
        checkEmpty(value);
      }else {
        Node n = new Node(value, null); // laver en ny node
        System.out.println("insert " + value + " here " + place);
        checkBiggest(value);
        checkSmallest(value);
        Node current = first; // sætter current node til den første node
        int ins = place-2; // sætter ins til hvilken plads vi skal sætte den på -2
      for(int i = 0; i < ins; i++){ // for loop der kører til i er større end ins
        current = current.next; // sætter current til currents næste
      }
      n.next = current.next; // sætter den node vi hars næste til currents næste
      current.next = n; // sætter currents næste til at være n
      }
    }

    public void checkBiggest(int value){ // funktion til at tjekke hvilket tal der er størst
      if (biggestValue < value){ // tjekker om value er større end biggest
        biggestValue = value; // sætter biggesValue til at være value
      }
    }

    public void checkSmallest(int value){ // funktion til at tjekke hvilket tal der er mindst
      if (smallestValue > value){ // tjekker om value er mindrer end smallestValue
        smallestValue = value; // sætter sallestalue til at være value
      }
    }

    public void printBiggest(){ // funktion til at printe biggestValue
      System.out.println("Biggest value " + biggestValue);
    }

    public void printSmallest(){ // funktion til at printe smallestValue
      System.out.println("Smallest value " + smallestValue);
    }

    public void checkEmpty(int value){ // funktion der tjekker om listen er tom
       checkBiggest(value);
       checkSmallest(value);
       System.out.println("Ingen node i first");
       Node n = new Node(value, null); // laver en ny node
       first = n; // sætter førsye node til at være n
    }
  }
