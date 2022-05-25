import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;

public class LinearProbingHashSet<Key>{
    HashElement<Key>[] a;
    int m;//size(the capacity)
    int n;//nr of key-values(elements)

    public LinearProbingHashSet(int m){
        this.a = new HashElement[m];
        this.m = m;
        this.n = 0;
    }

    public LinearProbingHashSet(){
        this(10);
    }

    
    public double loadFactor(){
        return(double) n/m;
    }

    public void watchLoadFactor() //if the load factor is low we halv the array
    {
        double loadfactor = loadFactor();

        if(loadfactor >= 0.5) {//if the loadfactor is greater or equals to 0.5 we double the array(50% or more)
            reSize(m * 2);
        } 
        else if(loadfactor <= 1.0 / 8) {//if the loadfactor is lesser or equals to 1.0/8 we divide the array by 2
            reSize(m / 2);
        }
    }

    private int updateIndex(int i) {//updates the index
        return ++i % m;
    }

    public int hash(Key key){
        return(key.hashCode() & 0x7fffffff) % m;//0x7fffffff is the highest positive value we can have, the maximum value in the index in the array
        
    }

    public int getCapacity(){
        return m;
    }
    
    //Custom Method newSize
    public void reSize(int newSize){//resize method with a int newSize
        LinearProbingHashSet<Key> a_temp = new LinearProbingHashSet<>(newSize);//we make a temp key array with the size "newSize"
        for(int i = 0; i < m; i++){//for i = 0 i < the size(capacity)
            if(a[i] != null){//if the a[i] isnt null
                a_temp.noResize(a[i].key, a[i].getFrequencey());//we use the method noResize with the value Key and int value of getFrequency(counter)(the size)
            }
        }
        this.m = a_temp.m;
        this.a = a_temp.a;
        return;
    }

    public void insert(Key key){
        watchLoadFactor();//watch the load factor to se how the n/m is working right now
        noResize(key, 1);//uses the noResize method where we insert value key with the counter value 1
        return;
    }

    private void noResize(Key key, int counter){//noResize
        int index = hash(key);

        while(a[index] != null){//while the position is occupied

            if (a[index].key.equals(key)){ //if the key is the same
                a[index] = new HashElement<Key>(key, a[index].getFrequencey());//new hashelement with the counter of getfrequency
                a[index].increment();//where we increment the counter
                return;
            }
            index = updateIndex(index);
        }

        // key dosent exist
        a[index] = new HashElement<>(key, counter);
        n++;
        return;
    }
  
    public boolean contains(Key key){//while the a index isnt null
        int index = hash(key);
        while(a[index] != null){
            if(a[index].key.equals(key)){//if a index is equals the key return true
                return true;
            }
            index = updateIndex(index);//update the index
        }
        return false;//else return false
    }

    public void decrease(Key key)//decrease method
    {
        int index = hash(key);
        while (a[index] != null) //while a index isnt null
        {
            if (a[index].key.equals(key)) {//if a index is equals to key
                a[index].decrement();//we use the decrement meethod on a index
                if (a[index].counter == 0) {//and if the a index counter == 0, we delete(key)
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
        while (a[index] != null) {//while a index isnt null

            // if key is found
            if (a[index].key.equals(key)) {//if a index is equals key
                a[index] = null;//a index value = null
                n--;//nr of a(elements) are decreased by 1
                reSize(m); // reoganizes the set
            }
            index = updateIndex(index);//updates index
        }
        watchLoadFactor();//watch the load facotr
        return;
    }

    public Iterable<Key> keys() {
        ArrayList<Key> keysList = new ArrayList<Key>();
        ArrayList<Integer> counterList = new ArrayList<Integer>();
        for (int i = 0; i < m; i++) {       //Add the keys in a array and the value counter to another one
              if (a[i] != null) {
                  keysList.add((Key) a[i].getKey());
                  counterList.add(a[i].counter);
              }
          }
  
        for(int j = 1; j <keysList.size(); j++){
            Key CK = keysList.get(j);                    // j = 1 gives the second element in the array
            int CC = counterList.get(j);
            int k = j - 1;                            //setts k lesser than j, because i always is lesser than j
  
            while(k >= 0 && counterList.get(k) > CC){       //as long as k is greater or equal to 0 and CC is greater than one
                keysList.set(k + 1, keysList.get(k));
                counterList.set(k + 1, counterList.get(k));
                k--;
  
            }
            keysList.set(k + 1, CK);
            counterList.set(k + 1, CC);
        }
        Collections.reverse(keysList);        //Flips the list so that it prints the most to the least "förekommande"
        Collections.reverse(counterList);
  
        return () -> Arrays.stream((Key[])keysList.toArray()).iterator();
      }
}
