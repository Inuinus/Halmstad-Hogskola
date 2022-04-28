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
                        mpqTemp = new MaxPQ<T>(); // Detta glömdes
                        for (int i = 1; i <= size; i++)
                            mpqTemp.insert(a[i]);
                    }
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

    public void maxPQ(T[] a) {
        
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
        // Så länge föräldranoden existerar och är mindre än
        // barnnoden.
        while (k / 2 >= 1 && less(a[k / 2], a[k])) {
            // byt plats på förälder och barn...
            exch(k, k / 2);

            // och hitta den nya föräldern.
            k /= 2;
        }
    }

    public void sink(int k) {

        while (2 * k <= size) {
            // i är de första barnnoden
            int i = 2 * k;

            // välj den "största" av de två barnnoderna
            if (i < size && less(a[i], a[i + 1]))
                i++;

            // Om den "största" av de två barnnoderna är
            // mindre än föräldranoden: avbryt
            if (less(a[i], a[k]))
                break;

            // Vi byter vi plats på föräldranoden och den största
            // barnnoden...
            exch(i, k);

            // ...och sätter den nya föräldranoden till den största
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
        int n = 10;
        Integer[] a = new Integer[n];
        Random r = new Random();

        for (int i = 0; i < n; i++)
            a[i] = r.nextInt(10);

        System.out.println(Arrays.toString(a));

        MaxPQ<Integer> mpq = new MaxPQ<Integer>();
        for (int i = 0; i < n; i++)
            mpq.insert(a[i]);

        // for (int i = 0; i < n; i++)
        // System.out.println(mpq.delMax());

        for (Integer i : mpq.sortedOrder())
            System.out.println(i);

        /*
         * for (Integer i : mpq)
         * System.out.println(i);
         */

    }
}