public class HashElement<Key> implements Comparable<HashElement<Key>>{
    
    Key key;
    int counter;

    public HashElement(Key key, int counter){
        this.key = key;
        this.counter = counter;
    }

    public HashElement(Key key){
        this(key, 1);
    }

    public void increment(){
        counter++;
    }

    public void decrement(){
        counter--;
    }


    public int getFrequencey(){
        return counter;
    }

    public Key getKey(){
        return key;
    }

    public void setKey(Key key){
        this.key = key;
    }

    public int compareTo(HashElement that) {
        int compare = Integer.compare(this.counter, that.counter);
        return compare;
    }

}