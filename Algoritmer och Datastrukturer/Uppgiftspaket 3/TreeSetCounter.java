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

    public boolean contains(T t, Node root){
        if(root == null){
            return false;
        }
        while(root != null){
            if(t.compareTo(root.t) < 0){
                return contains(t, root.left);
            }else if(t.compareTo(root.t) > 0){
                return contains(t, root.right);
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

    public int size(Node root){
        if(root == null){
            return 0;
        }else{
            return 1 + size(root.left) + size(root.right);
        }
    }

    public int counter(T t){
        return search(t, root);
    }

    public int search(T t, Node root){
        int counter = 0;
        if(root == null){
            counter = 0;
            return counter;
        }
        
        while(root != null){
            if(t.compareTo(root.t) < 0){
                return search(t, root.left);
            }else if(t.compareTo(root.t) > 0){
                return search(t, root.right);
            }
            else{
                return counter = root.counter;
            }
        }
        return counter;
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
        root.add(20);
        root.add(10);
        root.add(10);
        root.add(10);
        root.add(8);
        root.add(30);
        root.add(25);
        root.add(15);
        System.out.println(root.contains(0));
        System.out.println(root.counter(10));
        System.out.println(root.toString());
        System.out.println(root.size());
        System.out.println(root.getMaxFrequency());
        root.clear();


        

        System.out.println(root.toString());
     }  
    
}