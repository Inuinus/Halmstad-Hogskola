import java.util.Iterator;

public class DataBuffer<T> implements Iterable<T>{
    int bufferSize;
    int size;
    int front;
    int back;
    T[] a;

    public DataBuffer(int bufferSize){
        if(bufferSize < 1){
            throw new IllegalAccessError("The size of the buffer cannot be less than 1");
        }

        this.bufferSize = bufferSize;
        this.back = -1;
        this.front = 0;
        this.size = 0;
        this.a = (T[]) new Comparable[bufferSize];
    }

    public void enqueue(T t){
        if(size == bufferSize){
            throw new IllegalStateException("Buffer is full, u can't add more");
        }
        back = (back + 1)%bufferSize;
        a[back] = t;
        size++;
    }

    public T dequeue(){
        T element = a[front];
        front = (front + 1) % bufferSize;
        size--;
        return element;
    }

    public void changeBufferSize(int newBufferSize){
        bufferSize = newBufferSize;
        if(newBufferSize < bufferSize){
            
        }
    }

    public boolean isEmpty() {
        return bufferSize == 0;
    }

    public int size(){
        return size;
    }

    public int bufferSize(){
        return bufferSize;
    }

    public Iterator<T> iterator() {
        // TODO Auto-generated method stub
        return null;
    }
    
    public void printBuffer() {
        // custom class

        String s = "(";
        for (T t : a) {
            s += t + ", ";
        }

        if (!isEmpty())
            s = s.substring(0, s.length() - 2);
        s += ")";
        System.out.println(s);
        System.out.println("back: " + this.back);
        System.out.println("front: " + this.front);
        System.out.println("size: " + this.size);
        System.out.println();
    }

    public static void main(String[] args) {
        DataBuffer<Integer> buffer1 = new DataBuffer<>(8);
        buffer1.enqueue(4);
        buffer1.enqueue(7);
        buffer1.enqueue(2);
        buffer1.enqueue(9);
        buffer1.enqueue(9);
        buffer1.enqueue(2);
        buffer1.enqueue(9);
        buffer1.enqueue(9);

        buffer1.dequeue();
        buffer1.dequeue();
        buffer1.dequeue();
        buffer1.dequeue();
        buffer1.dequeue();
        buffer1.dequeue();
        buffer1.dequeue();
        buffer1.dequeue();

        
        buffer1.printBuffer();
        buffer1.enqueue(9);
        buffer1.printBuffer();
        System.out.println(buffer1.bufferSize()); 

    }
}