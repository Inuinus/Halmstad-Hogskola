import java.util.LinkedList;

public class LinearProbingHashSet<Key>{
    
    int m;//size(the capacity)
    int n;//nr of key-values(elements)
    HashElement<Key>[] keys;

    public LinearProbingHashSet(int m){
        keys = new HashElement[m];
        this.m = m;
        this.n = 0;
    }

    public LinearProbingHashSet(){
        this(10);
    }

    public int hash(Key key){
        return(key.hashCode() & 0x7fffffff % m);//0x7fffffff is the highest positive value we can have, the maximum value in the index in the array
        
    }

    public int getCapacity(){
        return m;
    }

    public void insert(Key key){
        watchLoadFactor();//watch the load factor to se how the n/m is working right now
        noResize(key, 1);//uses the noResize method where we insert value key with the counter value 1
        return;
    }

    public boolean contains(Key key){//while the keys index isnt null
        int index = hash(key);
        while(keys[index] != null){
            if(keys[index].key.equals(key)){//if keys index is equals the key return true
                return true;
            }
            index = updateIndex(index);//update the index
        }
        return false;//else return false
    }

    public void decrease(Key key)//decrease method
    {
        int index = hash(key);
        while (keys[index] != null) //while keys index isnt null
        {
            if (keys[index].key.equals(key)) {//if keys index is equals to key
                keys[index].decrement();//we use the decrement meethod on keys index
                if (keys[index].counter == 0) {//and if the keys index counter == 0, we delete(key)
                    delete(key);
                }
            }
            index = updateIndex(index);//update index
        }
        watchLoadFactor();//and watchLoadFactor to se how the load factor is doing
        return;
    }

    public void delete(Key key) //delete key
    {

        int index = hash(key);
        // finds the targeted key
        while (keys[index] != null) {//while keys index isnt null

            // if key is found
            if (keys[index].key.equals(key)) {//if keys index is equals key
                keys[index] = null;//keys index value = null
                n--;//nr of keys(elements) are decreased by 1
                reSize(m); // reoganizes the set
            }
            index = updateIndex(index);//updates index
        }
        watchLoadFactor();//watch the load facotr
        return;
    }

    //Custom Method newSize
    public void reSize(int newSize){//resize method with a int newSize
        LinearProbingHashSet<Key> key_temp = new LinearProbingHashSet<>(newSize);//we make a temp key array with the size "newSize"
        for(int i = 0; i < m; i++){//for i = 0 i < the size(capacity)
            if(keys[i] != null){//if the keys[i] isnt null
                key_temp.noResize(keys[i].key, keys[i].getFrequencey());//we use the method noResize with the value Key and int value of getFrequency(counter)(the size)
            }
        }
    }
    
    private int updateIndex(int i) {//updates the index
        return ++i % m;
    }

    private void noResize(Key key, int counter){//noResize
        int index = hash(key);

        while(keys[index] != null){//while the position is occupied
            if (keys[index].key.equals(key)) //if the key is the same
            {
                keys[index] = new HashElement<Key>(key, keys[index].getFrequencey());//new hashelement with the counter of getfrequency
                keys[index].increment();//where we increment the counter
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

    public void watchLoadFactor() //if the load factor is low we halv the array
    {
        double loadfactor = loadFactor();

        if (loadfactor >= 0.5) {//if the loadfactor is greater or equals to 0.5 we double the array(50% or more)
            reSize(m * 2);
        } else if (loadfactor <= 1.0 / 8) {//if the loadfactor is lesser or equals to 1.0/8 we divide the array by 2
            reSize(m / 2);
        }
    }

    public Iterable<Key> keys() 
    {
        LinkedList<Key> list = new LinkedList<Key>();

        for (int i = 0; i < m; i++) 
        {
            if (keys[i] != null)
                list.add(keys[i].getKey());
        }

        return list;
    }
}
