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
    Node parent = null;
    int size = 0;

    TreeSetCounter(){
        root = null;
    }

    public void add(T t){
        if(root == null){
            new Node(t);
        }

        while(t != null){
            parent = root; //Updates the parent to the current node
            
            if(t.compareTo(root.t) < 0){
                root = root.left;
            }else{
                root = root.right;
            }
        }

        if(t.compareTo(parent.t) < 0){
            parent.left = new Node(t);
        }else{
            parent.right = new Node(t);
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

    public boolean isEmpty(){//Are there any elements?
        return root == null;
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
        root.add(10);
        System.out.println(root.toString());
        
     }  
    
}