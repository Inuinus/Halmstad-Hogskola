import java.util.Iterator;

public class DoublyLinkedList<T extends Comparable<T>> implements Iterable<T>{
    DoublyLinkedList<T> head;
    int size;

    public DoublyLinkedList(){
        head = null;
        size = 0;
    }

    //Lägg till t i slutet av listan.
    public void add(T t){
        if(isEmpty()){
            head = new DoublyLinkedList<T>(t, null);
            size++;
            return;
        }
    }

    public boolean isEmpty(){
        return size == 0;
    }

    public Iterator<T> iterator() {

        return null;
    }
}
