import java.util.Iterator;
import java.util.Stack;

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
    int maxFreq;

    TreeSetCounter(){
        root = null;
    }

    public void add(T t){
        root = insert(root, t);
    }

    public Node insert(Node root, T t){
        if(root == null){
            return new Node(t);
        }
    
        if(t.compareTo(root.t) < 0){        //if the value "t" is smaller than the parent node we put the "t" value at the left side(smaller side)
            root.left = insert(root.left, t);
        }else if(t.compareTo(root.t) > 0){  //Otherwise we put the value if its greather than 0 on the right side because its bigger than the parent node.
            root.right = insert(root.right, t);
        }else{
            root.counter++;
        }

        root.size = size(root.left) + size(root.right) + 1;
        return root;
    }

    public void clear(){//removes all elements from the TreeSetCounter
        size = 0;
        root = null;
    }

    public int getMaxFrequency(){
        getMax(root);
        return maxFreq;
    }

    private void getMax(Node root){
        if (root == null) {             //if empty return;
            return;
        }
        getMax(root.left);              //using the method on itself to get root.left, compare root.counter to maxFreq and if its greater than maxFreq becomes root.counter.
        if (root.counter > maxFreq) {
            maxFreq = root.counter;
        }
        getMax(root.right);
        return;
    } 

    public boolean contains(T t){
        return contains(t, root);
    }

    public boolean contains(T t, Node node){
        if(root == null){
            return false;
        }
        while(node != null){                        //continues til we reach null, if "t" compareTo the nodes "t" value is lesser than 0 we return the value on hte left
            if(t.compareTo(node.t) < 0){            //and as we continue we continue until we either find a statement that is the same as t or else we get false.
                return contains(t, node.left);
            }else if(t.compareTo(node.t) > 0){
                return contains(t, node.right);
            }else{
                return true;
            }
        }
        return false;
    }

    public boolean isEmpty(){//Are there any elements?
        return root == null;
    }

    public int size(){
        return size(root);
    }

    public int size(Node node){
        if(node == null){
            return 0;
        }else{
            return 1 + size(node.left) + size(node.right);  //adds every node on the left and the nodes on the right + 1;
        }
    }

    public int counter(T t){
        return search(t, root);
    }

    public int search(T t, Node node){
        int counter = 0;
        if(node == null){
            counter = 0;
            return counter;
        }
        
        while(node != null){
            if(t.compareTo(node.t) < 0){
                return search(t, node.left);
            }else if(t.compareTo(node.t) > 0){
                return search(t, node.right);
            }
            else{
                return counter = node.counter;
            }
        }
        return counter;
    }

        public Iterator<T> iterator() {
            return new BSTIterator();
        }
    
        public class BSTIterator implements Iterator<T> {
            Stack<Node> stack = new Stack<>();
    
            BSTIterator() {
                pushLeft(root);
            }
    
            public boolean hasNext() {
                return !stack.isEmpty();
            }
    
            public T next() {
                Node node = stack.pop();
                pushLeft(node.right);
                return (T) node.t;
            }
    
            public void pushLeft(Node node) {
                while(node != null) {
                    stack.push(node);
                    node = node.left;
                }
            }
        }
}