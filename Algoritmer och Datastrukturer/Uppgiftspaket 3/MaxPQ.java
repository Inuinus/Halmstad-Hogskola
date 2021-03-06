import java.util.*;

public class MaxPQ<T extends Comparable<T>>
        implements Iterable<T> {
    T[] a;
    int size;

    public Iterable<T> sortedOrder() {
        return new Iterable<T>() {
            public Iterator<T> iterator() {
                return new Iterator<T>() {
                    MaxPQ<T> mpqTemp;

                    {
                        mpqTemp = new MaxPQ<T>();
                        for (int i = 1; i <= size; i++)
                            mpqTemp.insert(a[i]);
                    }

                    public boolean hasNext() {
                        return !mpqTemp.isEmpty();
                    }

                    public T next() {
                        return mpqTemp.delMax();
                    }
                };
            }
        };
    }

    public Iterator<T> iterator() {
        return new Iterator<T>() {
            int index = 1;

            public boolean hasNext() {
                return index <= size;
            }

            public T next() {
                return a[index++];
            }

        };
    }

    public MaxPQ() {
        this(10);
    }

    public MaxPQ(int max) {
        a = (T[]) new Comparable[max];
        size = 0;
    }

    public MaxPQ(T[] a) {
        this.a = (T[]) a;
        int n = a.length;
        size = n;
        T[] new_array = (T[]) new Comparable[n+1];

        //the new array
        for(int i = 0; i < n; i++){
            new_array[i+1] = a[i];
        }

        System.out.println(Arrays.toString(this.a));
        this.a = new_array;

        //iterates
        for(int i = n/2; i >= 1; i--){
            this.sink(i);
        }
        System.out.println(Arrays.toString(this.a));
    }

    int size() {
        return size;
    }

    boolean isEmpty() {
        return size == 0;
    }

    public void insert(T t) {
        if (size >= a.length - 1)
            a = Arrays.copyOf(a, 2 * a.length);

        a[++size] = t;

        swim(size);

    }

    public T max() {
        if (isEmpty())
            return null;

        return a[1];
    }

    public T delMax() {
        if (isEmpty())
            return null;

        exch(1, size);

        T temp = a[size];
        a[size--] = null;

        if (!isEmpty())
            sink(1);

        return temp;
    }

    private void swim(int k) {
        // S?? l??nge f??r??ldranoden existerar och ??r mindre ??n
        // barnnoden.
        while (k / 2 >= 1 && less(a[k / 2], a[k])) {
            // byt plats p?? f??r??lder och barn...
            exch(k, k / 2);

            // och hitta den nya f??r??ldern.
            k /= 2;
        }
    }

    public void sink(int k) {

        while (2 * k <= size) {
            // i ??r de f??rsta barnnoden
            int i = 2 * k;

            // v??lj den "st??rsta" av de tv?? barnnoderna
            if (i < size && less(a[i], a[i + 1]))
                i++;

            // Om den "st??rsta" av de tv?? barnnoderna ??r
            // mindre ??n f??r??ldranoden: avbryt
            if (less(a[i], a[k]))
                break;

            // Vi byter vi plats p?? f??r??ldranoden och den st??rsta
            // barnnoden...
            exch(i, k);

            // ...och s??tter den nya f??r??ldranoden till den st??rsta
            // barnnoden.
            k = i;

        }
    }

    private boolean less(T v, T w) {
        return v.compareTo(w) < 0;
    }

    private void exch(int i, int j) {
        T temp = a[i];
        a[i] = a[j];
        a[j] = temp;
    }

    public static void main(String[] cmdLn) {
 
        Comparable[] array1 = new Comparable[]{12, 7, 6, 10, 8, 20};

        MaxPQ mpq1 = new MaxPQ(array1);
        
        // for (Object element : mpq1) {
        //     System.out.print(" " + element);
        // }

        // System.out.println();
        
        for (int i = 0; i < mpq1.size; i++) {
            System.out.println("a: " + mpq1.a[i]);
        }
    }
}