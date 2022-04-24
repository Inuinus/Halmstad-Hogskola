import java.util.*;

public class DoublyLinkedList<T extends Comparable<T>> implements Iterable<T>{
    ListNode<T> head; //names
    ListNode<T> tail; //names
    int size;         //variable for size

    public DoublyLinkedList(){//Empty Linked List
        head = null;
        tail = null;
        size = 0;
    }

    //Custom method to check if the value is null.
    public void ifNull(Object value){
        if(value == null){
            throw new NullPointerException("Null is not allowed!");
        }
        return;
    }

    //Custom method to check if the value is negative or not.
    public void ifNegative(int value){
        if(value < 0){
            throw new IllegalArgumentException("Negative values is not allowed!");
        }
        return;
    }

    //Is the list Empty?
    public boolean isEmpty(){
        return size == 0;       //if size == 0, it will return true, if size >= 0 false
    }

    //Add "t" in the end of the list
    public void add(T t){
        ifNull(t);          //Using the custom method to check if the list is NULL

        if(isEmpty()){
            head = new ListNode<T>(t);//Create a new node that points to head
            tail = head;//Tail will become our old head
            size++;//Increase our size with 1 to keep track of the size
            return;
        }

        ListNode<T> node = head;//Gives node the name head

        while(node.next != null){
            node = node.next;   //while our next node isnt null, node will become the next node
        }

        node.next = new ListNode<T>(t, node, null); //Creates a new node that will become our tail
        tail = node.next;
        size++;
    }

    //Add "t" on the place INDEX in the list
    public void add(int index, T t){
        ifNegative(index);//Check if negative(custom method)

        if(index < 0){//Throw index out of bounds when index < 0
            throw new IndexOutOfBoundsException(
                "Vid add(int index, T t) så är inte index tillåtet!"
            );
        }

        if(index >= size){//adds "t" in the end of the list when index is out of bounds
            add(t);
            return;
        }

        if(index == 0){//index == 0, create new node at head, increase the size
            head = new ListNode<T>(t, null, head);
            head.next.previous = head; //connect the new head to the next node
            size++;
            return;
        }

        ListNode<T> node = head;//makes a temp node
        for(int i = 0; i < index - 1; i++)
            node = node.next;

        node.next = new ListNode<T>(t, node, node.next);
        node.next.next.previous = node.next;
        size++;
    }

    //Return the value on INDEX
    public T get(int index){
        ifNegative(index);

        if(isEmpty()){
            return null;
        }

        if(index > size - 1){
            return null;
        }

        ListNode<T> node = head;//makes a temp node
        for(int i = 0; i < index; i++){
            node = node.next;
        }
        return node.value;
    }

    //Return the first value of the list
    public T getFirst(){
        if(isEmpty()){
            return null;
        }
        
        return head.value;
    }

    //Return the last value of the list
    public T getLast(){
        return tail.value;
    }

    //If the value "t" is in the list, all appearances of 
    //t gets removed and return the value of all t. If nothing removes return 0
    public int remove(T t){
        ifNull(t);

        int i = 0;
        int counter = 0;

        for (T node_data : this) {//for each loop
            if (node_data.equals(t)) {//if the data equals "t"
                remove(i);//remove this on the spot(i)
                counter++;//increase the counter
                i--; // since size decreases the index must decrease
            }
            i++;
        }
        return counter;
    }

    //Removes the value at Index and returns this value;
    public T remove(int index){
        ifNegative(index);

        if(isEmpty()){
            return null;
        }

        if(index == 0){
            return removeFirst();
        }

        if(index == size - 1){
            return removeLast();
        }

        ListNode<T> node1 = null;//give names
        ListNode<T> node2 = head;//makes a temp node
        ListNode<T> node3 = head.next;//makes a temp node
        T vNode = null; //Save index in this node

        for (int i = 0; i < index + 1; i++) {//checks the list for the value "index"
            if(i == index){//changes the order etc
                vNode = node2.value;//take the value to a tempNode for easy return statement
                node1.next = node3;
                node3.previous = node1;

                node2 = node3;
                node3 = node2.next;
                size--;
            }else{//else this thing
                node1 = node2;
                node2 = node3;
                node3 = node3.next;   
            }
        }

        //Return the value on the place index
        return vNode;
    }

    //Removes the last value of the list and returns this
    public T removeLast(){
        if(isEmpty()){
            return null;
        }

        ListNode<T> node = head;//makes a temp node
        while(node.next != null){
            node = node.next;
        }

        //if we only have one node
        if(size == 1){
            head = null;
            tail = null;//removes the head and tail to eliminate the whole node
            size--;
            return node.value;
        }

        tail = node.previous;//makes node infront of the last to tail
        node.previous.next = null;//new tail points at null
        node.previous = null;//old tail becomnes null
        node.next = null;//set the next node to null;
        size--;//decrease the size of the list
        return node.value;
    }

    //Removes the First value of the list and returns this
    public T removeFirst(){
        if(isEmpty()){
            return null;
        }

        ListNode<T> node = head;

        if(size == 1){//if there only is one node
            head = null;//remove hte value and returns
            tail = null;
            size--;
            return node.value;
        }

        head = node.next;//makes the node after the last to tail
        head.previous = null;//setts the old head to tail
        size--;//decrease the size
        return node.value;
    }

    //Returns the size of the list
    public int size(){
        return size;
    }

    //Returns a iterator for the list
    public Iterator<T> iterator() {
        return new Iterator<T>()
        {
            ListNode<T> node = head;
            
            public boolean hasNext()
            {
                return node != null;
            }
            
            public T next()
            {
                ListNode<T> tNode = node;
                node = node.next;
                return tNode.value;
            }
        };
    }

    //Clears the Double Linked List
    public void clear(){
        head = null;
        tail = null;
        size = 0;
    }

    //Converts list to a String
    public String toString(){
        String s = "(";
        for (T t : this){//for each node in the list, insert node + , in string(s)
            s += t + ", ";
        }   
        
        if (!isEmpty())//if its empty
            s = s.substring(0,s.length()-2);//removes space between the last node in the string and )
        s += ")";
        return s; 
    }

    //2b
    public void reverse(){
        MyStack<T> myStack = new MyStack<>();
        for(T value: this){                 //Add all the nodes in the stack
            myStack.push(value);
        }

        int sizeStack = size;
        this.clear();                       //clears the list from all the nodes
        for(int i = 0; i < sizeStack; i++){//add all nodes in reverse order
            this.add(myStack.pop());
        }
    }

    //Assignment 3a
    public void addAtFirstSmaller(T t){//begin from the back and search for the first node with the value lesser than t, insert this "t" behind this node
        ifNull(t);
        ListNode<T> node = tail; //           

        if(isEmpty()){//list empty?, add t
            add(t);
            return;
        }

        for(int i = 0; i < size + 1; i++){//search the nodes list
            if(node.value.compareTo(t) <= -1){//-1 means that we search for a smaller number
             add(size - i, t);//says what index we will put the add on
             return;
            }
            
            if(node.previous == null){//if we move to the end (tail) we will put t on index 0
                add(0, t);
                return;
            }

            node = node.previous;
        }
    }

    public static void main(String[] args) {
        // ======= testing speed of sort ============================
        Random rand = new Random();
        Integer[] arr = new Integer[1000];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = rand.nextInt(100);
        }

        long start = System.currentTimeMillis(); // START clock
        
        Comparable[] array123 = InsertionSort.sort(arr);

        long finish = System.currentTimeMillis(); // FINISH clock
        Long computationalTime = finish - start;
        System.out.println(Arrays.toString(array123));
        System.out.println("Time: " + computationalTime + " ms");
        // ===============================================================

    }
}
