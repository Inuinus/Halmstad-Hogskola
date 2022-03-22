public class MyArrayList<T>{

  private T[] MyArray;          //Lagrar elementen
  int size;                     //Hur många elements

  public MyArrayList(){         //Tom arraylist(EMPTY)
    MyArray = (T[]) new Object[10];
    size = 0;
  }

  public boolean add(T t){      //t i slutet av listan(arrayn)
    if (size >= MyArray.length){
      T[] extend = (T[]) new Object[MyArray.length*2];
      System.arraycopy(MyArray, 0, extend, 0, MyArray.length);
      MyArray = extend;
    }
    MyArray[size] = t;
    size++;

    return true;

  }

  public void add(int index, T t){ // Lägg till t på platsen Index
    if(size < index || index < 0){
      throw new IndexOutOfBoundsException(index);
    }
    add(t);

    for (int i = size - 1; i > index; i--){
      MyArray[i] = MyArray[i-1];
    }
    MyArray[index] = t;
  }



public static void main(String[] args) {

}
}
