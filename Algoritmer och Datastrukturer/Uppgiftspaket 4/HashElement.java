public class HashElement<Key> implements Comparable<HashElement<Key>>{
    
    Key key;
    int counter;

    public HashElement(Key key, int counter){
        checkIfNull(key);
        checkIfNegative(counter);
        this.key = key;
        this.counter = counter;
    }

    public HashElement(Key key){
        this(key, 1);
        checkIfNull(key);
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

    public int compareTo(HashElement<Key> that) {
        if (this.counter > that.counter) {
            return 1;
        }
        if (this.counter < that.counter) {
            return -1;
        }
        return 0;
    }

    //Custom method to check if null;
    public void checkIfNull(Object value){
        if(value == null){
            throw new NullPointerException("Null is not allowed");
        }
    }

    //Custom method to check if negative values;
    public void checkIfNegative(int value){
        if(value < 0){
            throw new IllegalArgumentException("Negative values is not allowed");
        }
    }
}