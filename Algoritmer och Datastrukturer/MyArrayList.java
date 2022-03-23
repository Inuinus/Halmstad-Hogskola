import java.security.Timestamp;

public class MyArrayList<T>{

  private T[] MyArray;          //Lagrar elementen
  int size;                     //Hur många elements

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
    //System.out.println(MyArray[size]); //Kontroll för att se så det funkar.//
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



}
