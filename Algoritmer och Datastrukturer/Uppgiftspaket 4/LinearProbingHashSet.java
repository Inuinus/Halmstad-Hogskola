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

    }

    public double loadFactor(){
        return(double) n/m;
    }
}
