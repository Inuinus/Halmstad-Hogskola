import java.util.Iterator;

public class TreeSetCounter<T extends Comparable<T>> implements Iterable<T>{

    public class Node{//Constructor
        T t;
        int counter = 1;
        Node right;
        Node left;
        int size;

        public Node(T t){
            left = null;
            right = null;
            this.t = t;
        }

        public int size(){
            return size();
        }
    }

    Node root;
    int size = 0;

    TreeSetCounter(){
        root = null;
    }

    public void add(T t){
        if(root == null){
            
        }
        
    }

    public void clear(){//removes all elements from the TreeSetCounter
        size = 0;
        root = null;
    }

    public int getMaxFrequency(){
        return 0;

    }

    public boolean contains(T t){
        return false;

    }

    public boolean isEmpty(){
        return false;
    }

    public int size(){
        return 0;

    }

    public int counter(T t){
        return 0;

    }

    public Iterator<T> iterator() {
        // TODO Auto-generated method stub
        return null;
    }







    
}