import java.util.Iterator;

public class DoublyLinkedList<T extends Comparable<T>> implements Iterable<T>{
    DoublyLinkedList<T> head;
    int size;

    public DoublyLinkedList(){
        head = null;
        size = 0;
    }

    public Iterator<T> iterator() {

        return null;
    }
}
