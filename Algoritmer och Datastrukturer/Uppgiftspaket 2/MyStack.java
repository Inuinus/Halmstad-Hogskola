import java.util.Iterator;

public class MyStack<T extends Comparable<T>> implements Iterable<T> {
    DoublyLinkedList<T> myStack;

    MyStack(){
        myStack = new DoublyLinkedList<>();
    }

    //Inspect if the stack is empty
    public boolean isEmpty(){
        return myStack.isEmpty();
    }

    public T peek(){
        return myStack.getLast();
    }

    public T pop(){
        T value = myStack.getLast();
        myStack.removeLast();
        return value;
    }

    public Iterator<T> iterator() {
        return new Iterator<T>()
        {
            ListNode<T> node = myStack.head;
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
