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
        if(index < 0 || index >= size){
            throw new IndexOutOfBoundsException(
                "Vid add(int index, T t) så är inte index tillåtet!"
            );
        }

        if(index == 0){
            head = new ListNode<T>(t);
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

    }

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
}
