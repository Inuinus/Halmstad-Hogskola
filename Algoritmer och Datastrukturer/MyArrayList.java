public class MyArrayList<T>{

  private T[] MyArray;          //Lagrar elementen
  int size;                     //Hur många elements

  public MyArrayList(){         //Tom arraylist(EMPTY)
    MyArray = (T[]) new Object[10];
    size = 0;
  }

  public boolean add(T t){      //t i slutet av listan(arrayn)
    T[] newList = (T[]) new Object[MyArray.length*2];
    for(int i = 0; i < newList.length; i++){
      if(i == MyArray.length){
        newList[i] = t;
      }
      if(i < MyArray.length){
        newList[i] = MyArray[i];
      }
    }
    for (int i = 0;i < newList.length; i++) {
      System.out.println(newList[i]);
    }
    MyArray = newList;
    return true;
  }

public static void main(String[] args) {

  MyArrayList a1 = new MyArrayList();

  //boolean add
  a1.add("t");
}
}
