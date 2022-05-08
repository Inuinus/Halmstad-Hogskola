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
        return getMaxFrequency(root.counter);
    }

    public int getMaxFrequency(int counter){
        counter = 0;
        if(root == null){
            counter = 0;
            return counter;
        }

        while(root != null){
            if(counter > root.counter){
                root = root.left;
            }else if(counter < root.counter){
                counter = root.counter;
            }else{
                root = root.right;
            }
        }
        return counter;
    }

    public boolean contains(T t){
        return contains(t, root);
    }

    public boolean contains(T t, Node node){
        if(root == null){
            return false;
        }
        while(node != null){
            if(t.compareTo(node.t) < 0){
                return contains(t, node.left);
            }else if(t.compareTo(root.t) > 0){
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
            return 1 + size(node.left) + size(node.right);
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

        public Iterator iterator() {
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

    public String toString(){
        return "[" + toString(root) + "]";
     }
 
    protected String toString(Node node){
         if(node == null){
             return "";
         }
         else{
             String s = "";
             s += node.t + ", ";
 
             if(node.left != null){
                 s += "left " + toString(node.left);
             }
             if(node.right != null){
                 s += "right " + toString(node.right);
             }
 
             return s;
         }
     }

     public static void main(String[] args) {
        TreeSetCounter root = new TreeSetCounter<>();
        root.add(20);
        root.add(1);
        root.add(2);
        root.add(3);

        root.add(4);
        root.add(4);
        root.add(4);
        root.add(4);

        System.out.println(root.counter(4));
        
        System.out.println(root.getMaxFrequency());
     }  
    
}