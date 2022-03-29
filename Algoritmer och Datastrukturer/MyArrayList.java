import java.security.Timestamp;
import java.util.*;

public class MyArrayList<T> implements Iterable<T>{

  private T[] MyArray;          //Lagrar elementen
  int size;                     //Hur många elements
  public char[] set;

  public MyArrayList(){         //Tom arraylist(EMPTY)
    MyArray = (T[]) new Object[10];
    size = 0;
  }

  public boolean add(T t){      //t i slutet av listan(arrayn)
    if(size == MyArray.length){
      Object[] temporary = new Object[MyArray.length];
      for(int i = 0; i < MyArray.length; i++){
        temporary[i] = MyArray[i];
      }
      MyArray = (T[]) new Object[MyArray.length*2];
      for(int i = 0; i < MyArray.length; i++){
        MyArray[i] = (T) temporary[i];
      }
    }
    MyArray[size] = t;
    size++;
    return true;
  }

  public void add(int index, T t){
    MyArray[index] = t;
  }

  public boolean contains(T t){
    for(int i = 0; i < MyArray.length; i++){
      MyArray[i] = t;
      return true;
    }
    return false;
  }

  public T get(int index){
    if(!contains(MyArray[index]))
      return null;

    return MyArray[index];
  }

  public int indexOf(T t){
    for(int i = 0; i < MyArray.length; i++){
      if(MyArray[i] == t){
        return i;
      }
    }
    return -1;
  }

  public T Remove(int index){
    if(MyArray[index] != null){
      MyArray[index] = null;
      size = size - 1;
      for(int i = index + 1; i < MyArray.length - 1; i++){
        MyArray[i] = MyArray[i+1];
      }
      return MyArray[index];
    }
    else{return null;}
  }

  public boolean remove(T t){
    for(int i = 0; i < MyArray.length; i++){
      if(MyArray[i] == t){
        Remove(i);
        return true;
      }
    }
    return false;
  }

  public int removeAll(T t){
    int count = 0;
    for(int i = 0; i < MyArray.length; i++){
      if(MyArray[i] == t){
        Remove(i);
        count++;
      }
      return count;
    }
    return 0;
  }

  public T set(int index, T t){
    T temp = MyArray[index];
    MyArray[index] = t;

    return temp;
  }

  public boolean isEmpty(){
    for(int i = 0; i < MyArray.length; i++){
      if(MyArray[i] == null)
      return true;
    }
    return false;
  }

  public int size(){
    return(MyArray.length);
  }

  public Iterator<T> iterator(){

      return new Iterator<T>(){
        int index = 0;
        public boolean hasNext(){
          return index < size;
        }

        public T next(){
          return MyArray[index++];
        }
      };
  }
  
  public void clear(){
    for(int i = 0; i < MyArray.length; i++){
      MyArray[i] = null;
    }
  }

  public String toString(){
    String string = "[";
    for(T element : MyArray){
      if (element != null){
        string += element + ", ";
      }
    }
    string += "]";
    return string;
  }


}
