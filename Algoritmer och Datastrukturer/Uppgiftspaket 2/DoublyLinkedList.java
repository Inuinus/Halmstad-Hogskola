import java.util.*;

public class DoublyLinkedList<T extends Comparable<T>> implements Iterable<T>{
    ListNode<T> head;
    ListNode<T> tail;
    int size;

    public DoublyLinkedList(){
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
        return size == 0;
    }

    //Add "t" in the end of the list
    public void add(T t){
        ifNull(t);

        if(isEmpty()){
            head = new ListNode<T>(t);
            tail = head;
            size++;
            return;
        }

        ListNode<T> node = head;

        while(node.next != null){
            node = node.next;
        }

        node.next = new ListNode<T>(t, node, null);
        tail = node.next;
        size++;
    }

    //Add "t" on the place INDEX in the list
    public void add(int index, T t){
        ifNegative(index);

        if(index < 0){
            throw new IndexOutOfBoundsException(
                "Vid add(int index, T t) så är inte index tillåtet!"
            );
        }

        if(index >= size){
            add(t);
            return;
        }

        if(index == 0){
            head = new ListNode<T>(t, null, head);
            head.next.previous = head;
            size++;
            return;
        }

        ListNode<T> node = head;
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

        ListNode<T> node = head;
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

        for (T node_data : this) {
            if (node_data.equals(t)) {
                remove(i);
                counter++;
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

        ListNode<T> node1 = null;
        ListNode<T> node2 = head;
        ListNode<T> node3 = head.next;
        T vNode = null; //Save index in this node

        for (int i = 0; i < index + 1; i++) {
            if(i == index){
                vNode = node2.value;
                node1.next = node3;
                node3.previous = node1;

                node2 = node3;
                node3 = node2.next;
                size--;
            }else{
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

        ListNode<T> node = head;
        while(node.next != null){
            node = node.next;
        }

        //if we only have one node
        if(size == 1){
            head = null;
            tail = null;
            size--;
            return node.value;
        }

        tail = node.previous;
        node.previous.next = null;
        node.previous = null;
        node.next = null;
        size--;
        return node.value;
    }

    //Removes the First value of the list and returns this
    public T removeFirst(){
        if(isEmpty()){
            return null;
        }

        ListNode<T> node = head;

        if(size == 1){
            head = null;
            tail = null;
            size--;
            return node.value;
        }

        head = node.next;
        head.previous = null;
        size--;
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
        for (T t : this){
            s += t + ", ";
        }   
        
        if (!isEmpty())
            s = s.substring(0,s.length()-2);
        s += ")";
        return s; 
    }

    public void reverse(){
        MyStack<T> myStack = new MyStack<>();
        for(T value: this){                 //Add all the nodes in the stack
            myStack.push(value);
        }

        int sizeStack = size;
        this.clear();                       //clears the list from all the nodes
        for(int i = 0; i < sizeStack; i++){
            this.add(myStack.pop());
        }


    }

    //Assignment 3a
    public void addAtFirstSmaller(T t){
        ifNull(t);
        ListNode<T> node = tail; //           

        if(isEmpty()){
            add(t);
            return;
        }

        for(int i = 0; i < size + 1; i++){
            if(node.value.compareTo(t) <= -1){
             add(size - i, t);
             return;
            }
            
            if(node.previous == null){
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
