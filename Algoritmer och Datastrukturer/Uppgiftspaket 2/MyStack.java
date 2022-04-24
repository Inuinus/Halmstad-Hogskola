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

    //Returns the Top-value on the stack
    public T peek(){
        return myStack.getLast();
    }

    //Returns the Top-value on the stack and then removes it from the stack
    public T pop(){
        T value = myStack.getLast();
        myStack.removeLast();
        return value;
    }

    public void push(T t){//adds the value on the top of the list
        myStack.add(t);
    }

    public Iterator<T> iterator() {//goes through the list
        return new Iterator<T>()
        {
            ListNode<T> node = myStack.head;
            
            public boolean hasNext(){//return the nodes that it encounters til null
                return node != null;
            }
            
            public T next(){//return value on each node
                ListNode<T> tNode = node;
                node = node.next;
                return tNode.value;
            }
        };
    }
}
