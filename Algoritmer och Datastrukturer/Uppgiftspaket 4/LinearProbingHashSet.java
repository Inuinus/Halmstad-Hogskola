import java.util.LinkedList;

public class LinearProbingHashSet<Key>{
    
    int m;//size(the capacity)
    int n;//nr of key-values(elements)
    HashElement<Key>[] keys;

    LinearProbingHashSet(int m){
        keys = new HashElement[m];
        m = m;
        n = 0;
    }

    LinearProbingHashSet(){
        this(10);
    }

    public int hash(Key key){
        return(key.hashCode() & 0x7fffffff % m);
        
    }

    public int getCapacity(){
        return m;
    }

    public void insert(Key key){
        checkLoadFactor();
        noResize(key, 1);
        return;
    }

    public boolean contains(Key key){
        int index = hash(key);
        while(keys[index] != null){
            if(keys[index].key.equals(key)){
                return true;
            }
            index = updateIndex(index);
        }
        return false;
    }

    public void decrease(Key key){
        int index = hash(key);
        while (keys[index] != null) {
            if (keys[index].key.equals(key)) {
                keys[index].decrement();
                if (keys[index].counter == 0) {
                    delete(key);
                }
            }
            index = updateIndex(index);
        }
        checkLoadFactor();
        return;
    }

    public void delete(Key key) {

        int index = hash(key);
        // finds the targeted key
        while (keys[index] != null) {

            // if key is found
            if (keys[index].key.equals(key)) {
                keys[index] = null;
                n--;
                reSize(m); // reoganizes the set
            }
            index = updateIndex(index);
        }
        checkLoadFactor();
        return;
    }

    //Custom Method newSize
    public void reSize(int newSize){
        LinearProbingHashSet<Key> key_temp = new LinearProbingHashSet<>(newSize);
        for(int i = 0; i < m; i++){
            if(keys[i] != null){
                key_temp.noResize(keys[i].key, keys[i].getFrequencey());
            }
        }
    }
    
    private int updateIndex(int i) {
        return ++i % m;
    }

    private void noResize(Key key, int counter){
        int index = hash(key);

        while(keys[index] != null){
            if (keys[index].key.equals(key)) {
                keys[index] = new HashElement<Key>(key, keys[index].getFrequencey());
                keys[index].increment();
                return;
            }
            index = updateIndex(index);
        }

        // key dosent exist
        keys[index] = new HashElement<>(key, counter);
        n++;
        return;
    }

    public double loadFactor(){
        return(double) n/m;
    }

    public void checkLoadFactor() {
        double loadfactor = loadFactor();

        if (loadfactor >= 0.5) {
            reSize(m * 2);
        } else if (loadfactor <= 1.0 / 8) {
            reSize(m / 2);
        }
    }

    public Iterable<Key> keys() {
        LinkedList<Key> list = new LinkedList<Key>();

        for (int i = 0; i < m; i++) {
            if (a[i] != null)
                list.add(a[i].getKey());
        }

        return list;
    }
}
