public class InsertionSort<T extends Comparable<T>>{
    public static Comparable[] sort(Comparable[] a){
        DoublyLinkedList lista = new DoublyLinkedList<>();
        Comparable[] sortedarray = new Comparable[a.length];
       
       for(int i = 0; i < a.length; i++){
           lista.addAtFirstSmaller(a[i]);//insert all the sorted, the elements
       }
        
       for(int i = 0; i < a.length; i++){
           sortedarray[i] = lista.get(i);//puts in the sorted order in "sortedarray"
       }
        return sortedarray;
    }
}
