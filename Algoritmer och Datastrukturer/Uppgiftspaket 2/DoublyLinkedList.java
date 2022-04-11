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
