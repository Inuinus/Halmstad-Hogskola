import org.junit.*;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class DoublyLinkedList_test {

    static DoublyLinkedList<Integer> list1;

    @Before  // before each test                                   
    public void setUp() {
        list1 = new DoublyLinkedList<>();
    }

    @After   // after each test                                   
    public void tearDown() {
        list1 = new DoublyLinkedList<>();
    }

    @Test                                          
    public void emptyList_should_contain_null() {
        assertEquals(true, list1.isEmpty());
        assertEquals(null, list1.head);
        assertEquals(null, list1.tail);
        assertEquals(0, list1.size);
    }

    @Test                                               
    public void add_should_link_next_and_prev() {
        list1.add(1);
        list1.add(2);
        list1.add(3);
        assertEquals(3, list1.size);
        assertEquals(1, (Object) list1.head.next.previous.value);
        assertEquals(2, (Object) list1.head.next.value);
        assertEquals(3, (Object) list1.head.next.next.value);
        assertEquals(null, list1.head.previous);
    }

    @Test                                               
    public void add_should_change_head_tail_and_size() {
        list1.add(1);
        list1.add(2);
        list1.add(3);
        assertEquals(1, (Object) list1.head.value);
        assertEquals(3, (Object) list1.tail.value);
        assertEquals(3, (Object) list1.size);
    }

    @Test                                               
    public void add_to_empty_list() {
        list1.add(1);
        assertEquals(1, list1.size);
        assertEquals(1, (Object) list1.head.value);
        assertEquals(1, (Object) list1.tail.value);
        assertEquals(null, list1.head.previous);
        assertEquals(null, list1.head.next);
    }

    @Test                                               
    public void add_to_index_zero() {
        list1.add(1);
        list1.add(2);
        list1.add(0, 3);
        System.out.println(list1);
        assertEquals(1, (Object) list1.get(1));
    }

    @Test                                               
    public void add_to_index_2() {
        list1.add(1);
        list1.add(2);
        list1.add(3);
        list1.add(4);

        list1.add(2, 7);
        assertEquals(1, (Object) list1.get(0));
        assertEquals(2, (Object) list1.get(1));
        assertEquals(7, (Object) list1.get(2));
        assertEquals(3, (Object) list1.get(3));
        assertEquals(4, (Object) list1.get(4));
    }

    @Test                                               
    public void addAtFirstSmaller_at_index_zero() {
        list1.add(4);
        list1.add(2);
        list1.add(16);
        list1.add(8);
        list1.addAtFirstSmaller(1);
        System.out.println(list1);
        assertEquals(1, (Object) list1.get(0));
    }

    @Test                                               
    public void addAtFirstSmaller_in_empty_list() {
        list1.addAtFirstSmaller(1);
        assertEquals(1, (Object) list1.get(0));
        list1.addAtFirstSmaller(2);
        list1.addAtFirstSmaller(3);
        System.out.println(list1);
        assertEquals(3, (Object) list1.get(2));
    }

    @Test                                               
    public void addAtFirstSmaller_should_sort_random_list() {
        list1.addAtFirstSmaller(1);
        list1.addAtFirstSmaller(3);
        list1.addAtFirstSmaller(5);
        list1.addAtFirstSmaller(5);
        list1.addAtFirstSmaller(1);
        list1.addAtFirstSmaller(6);
        list1.addAtFirstSmaller(-16);
        list1.addAtFirstSmaller(-8);

        assertEquals(-16, (Object) list1.get(0));
        assertEquals(-8, (Object) list1.get(1));
        assertEquals(1, (Object) list1.get(2));
        assertEquals(1, (Object) list1.get(3));
        assertEquals(3, (Object) list1.get(4));
        assertEquals(5, (Object) list1.get(5));
        assertEquals(5, (Object) list1.get(6));
        assertEquals(6, (Object) list1.get(7));
    }

    @Test                                               
    public void addAtFirstSmaller_should_sort_String() {
        // sorts string characters
        DoublyLinkedList<String> list2 = new DoublyLinkedList<>();
        list2.addAtFirstSmaller("A");
        list2.addAtFirstSmaller("C");
        list2.addAtFirstSmaller("E");
        list2.addAtFirstSmaller("E");
        list2.addAtFirstSmaller("A");
        list2.addAtFirstSmaller("F");
        list2.addAtFirstSmaller("Ö");
        list2.addAtFirstSmaller("Ä");

        assertEquals("A", (Object) list2.get(0));
        assertEquals("A", (Object) list2.get(1));
        assertEquals("C", (Object) list2.get(2));
        assertEquals("E", (Object) list2.get(3));
        assertEquals("E", (Object) list2.get(4));
        assertEquals("F", (Object) list2.get(5));
        assertEquals("Ä", (Object) list2.get(6));
        assertEquals("Ö", (Object) list2.get(7));
    }

    @Test                                               
    public void get_should_return_node_data_at_index() {
        assertEquals(null, (Object) list1.get(0));

        list1.add(1);
        list1.add(2);
        assertEquals(2, (Object) list1.get(1));
    }

    @Test                                               
    public void get_should_return_null_when_out_of_range() {
        assertEquals(null, (Object) list1.get(100));
    }

    @Test                                               
    public void getLast_should_return_last_data() {
        list1.add(1);
        list1.add(2);
        list1.add(3);
        assertEquals(3, (Object) list1.getLast());
    }

    @Test                                               
    public void getLast_at_empty_list_should_return_null() {
        // TODO nullpointerexception
        // assertEquals(null, (Object) list1.getLast());
    }

    @Test                                               
    public void removeElements_should_remove_all_occurences() {
        // remove from empty list
        assertEquals(0, (Object) list1.remove((Integer) 2));

        // removes all twos
        list1.add(1);
        list1.add(2);
        list1.add(3);
        list1.add(2);
        list1.add(5);
        list1.add(2);
        System.out.println(list1);
        assertEquals(3, (Object) list1.remove((Integer) 2));

        System.out.println(list1);
        assertEquals(1, (Object) list1.get(0));
        assertEquals(3, (Object) list1.get(1));
        assertEquals(5, (Object) list1.get(2));
    }

    @Test                                               
    public void removeLast() {
        assertEquals(null, list1.removeLast()); // removes nothing

        list1.add(1);
        assertEquals(1, (Object) list1.removeLast());
        assertEquals(0, list1.size);
    }

    @Test                                               
    public void remove_node_at_index_should_return_removed_value() {
        list1.add(2);
        list1.add(4);
        list1.add(6);
        list1.add(8);
        assertEquals(6, (Object) list1.remove(2));
    }

    @Test                                               
    public void clear() {
        list1.clear();
        list1.add(1);
        list1.add(2);
        list1.add(3);
        System.out.println(list1);
        list1.clear();
        System.out.println(list1);
        assertEquals(null, list1.removeFirst());
    }

    @Test                                               
    public void removeFirst() {
        assertEquals(null, list1.removeFirst()); // removes nothing

        list1.add(1);
        assertEquals(1, (Object) list1.removeFirst());
        assertEquals(0, list1.size);

        list1.add(1);
        list1.add(2);
        assertEquals(1, (Object) list1.removeFirst());
    }

    @Test
    public void toStringTest() {
        assertEquals("()", list1.toString());
        list1.add(1);
        list1.add(2);
        list1.add(3);
        assertEquals("(1, 2, 3)", list1.toString());
    }

    @Test (expected = IllegalArgumentException.class)                    
    public void negativeIndex() {
        // This test expects an IllegalArgumentException when
        // trying to input a negative index int as argument

        list1.add(-13, 7);
        list1.get(-13);
        list1.remove(-13);
    }
    
}