public class ListNode<T>{
    // Denna klass ska innehålla tre instansvariabler som representerar värdet(av typen T) och
    // referenser till en föregående och efterföljande nod.
    T value;
    ListNode<T> previous;
    ListNode<T> next;
    
    public ListNode(T value, ListNode<T> previous, ListNode<T> next){
        this.value = value;
        this.next = next;
        this.previous = previous;
    }

    public ListNode(T value){
        this.value = value;
        this.next = null;
        this.previous = null;
    }

    public ListNode(){
        this.value = null;
        this.next = null;
        this.previous = null;
    }
}