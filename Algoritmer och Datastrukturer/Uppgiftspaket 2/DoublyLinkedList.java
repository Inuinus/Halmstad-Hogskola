import java.util.Iterator;
import java.util.List;

public class DoublyLinkedList<T extends Comparable<T>> implements Iterable<T>{
    ListNode<T> head;
    ListNode<T> tail;
    int size;

    public DoublyLinkedList(){
        head = null;
        tail = null;
        size = 0;
    }

    //Is the list Empty?
    public boolean isEmpty(){
        return size == 0;
    }

    //Add "t" in the end of the list
    public void add(T t){
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

    //TODO remove this linus
    public void printNode(int index) {
        
        ListNode<T> node = head;
        for (int i = 0; i < index; i++) {
            node = node.next;
        }

        String str_prev;
        String str_next;

        try {
			str_prev = String.valueOf(node.previous.value);
		}
		catch(NullPointerException e) {
			str_prev = "null";
		}

        try {
			str_next = String.valueOf(node.next.value);
		}
		catch(NullPointerException e) {
			str_next = "null";
		}

        System.out.println("" + str_prev + " | " + node.value + " | " + str_next);
        return;
    }

    //Add "t" on the place INDEX in the list
    public void add(int index, T t){
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
        size++;
    }

    //Return the value on INDEX
    public T get(int index){
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
        int counter = 0;
        if(isEmpty()){
            return 0;
        }

        //If the size is 1 and the value of head = t, we can just remove the single node
        if(size == 1 && head.value.equals(t)){
            removeLast();
            return 1;
        }

        ListNode<T> node1 = head;
        ListNode<T> node2 = node1.next;
        ListNode<T> node3 = node2.next;

        while(node3 != null){
            if(node2.value.equals(t)){
                node1.next = node3;
                node3.previous = node1;

                node2 = node3;
                node3 = node2.next;
                counter++;
            }else{
                node1 = node1.next;
                node2 = node2.next;
                node3 = node3.next;   
            }
        }

        if(tail.value.equals(t)){
            removeLast();
            counter++;
        }

        return counter;
    }

    //Removes the value at Index and returns this value;
    public T remove(int index){
        if(isEmpty()){
            return null;
        }

        if(size == 1){
            return removeLast();
        }

        return null;
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

    public static void main(String[] args) {
        DoublyLinkedList<Integer> list1 = new DoublyLinkedList<>();

        list1.add(1);
        list1.add(2);
        list1.add(3);
        System.out.println(list1);
        list1.printNode(2);

    }
}
