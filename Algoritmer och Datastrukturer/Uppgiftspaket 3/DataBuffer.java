import java.util.Arrays;
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

    public synchronized void enqueue(T t){
        if(size == bufferSize){
            throw new IllegalStateException("Buffer is full, u can't add more");
        }
        back = (back + 1)%bufferSize;
        a[back] = t;
        size++;
    }

    public synchronized T dequeue(){
        if(isEmpty()){
            return null;
        }

        T element = a[front];

        if(size == 1){
            back = -1;
            front = 0;
            size--;
            return element;
        }

        front = (front + 1) % bufferSize;
        size--;
        return element;
    }

    public void changeBufferSize(int newBufferSize){
        if(bufferSize < 1){
            throw new IllegalArgumentException("BufferSize cant be less than 1");
        }

        if(bufferSize == newBufferSize){
            return;
        }
        
        if(newBufferSize < bufferSize){
            T[] newBuffer_array = (T[]) new Comparable[newBufferSize];
            int newBuffer_array_index = 0;
            back = -1;
            size = 0;

            for(int i = front; i < newBufferSize; i++){
                newBuffer_array[newBuffer_array_index] = a[i % bufferSize];
                newBuffer_array_index++;
                back++;
                size++;
            }
            front = 0;
            a = newBuffer_array;
            return;
        }

        a = Arrays.copyOf(a, newBufferSize);
        bufferSize = newBufferSize;
        return;
    }

    public boolean isFull(){
        return size == bufferSize;
    }

    public boolean isEmpty() {
        return size == 0;
    }

    public int size(){
        return size;
    }

    public int bufferSize(){
        return bufferSize;
    }

    public Iterator<T> iterator() {

        return new Iterator<T>() {

            int index = front;
            int count = 0;
            public boolean hasNext() {

                return count < size;
            }

            public T next() {

                count++;
                return a[index++ % bufferSize];
            }
        };
    }
}