import org.junit.*;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class DataBuffer_Test {

    static DataBuffer<String> buffer1;

    @Before  // before each test                                   
    public void setUp() {
        buffer1 = new DataBuffer<>(5);
    }

    @After   // after each test                                   
    public void tearDown() {
        buffer1 = new DataBuffer<>(5);
    }

    @Test                                          
    public void empty_buffer_should_be_size_0() {
        assertEquals(0, buffer1.size);
        assertEquals(0, buffer1.front);
        assertEquals(-1, buffer1.back);
    }

    @Test                                          
    public void enque_should_add_A() {
        // TODO add check for A
        buffer1.enqueue("A");
        assertEquals(1, buffer1.size);
        assertEquals(0, buffer1.front);
        assertEquals(0, buffer1.back);
    }

    @Test                                          
    public void deque_should_remove_A() {
        // TODO add check for A
        buffer1.dequeue();
        assertEquals(0, buffer1.size);
        assertEquals(0, buffer1.front);
        assertEquals(-1, buffer1.back);
    }

    @Test                                          
    public void full_buffer_should_be_size_5() {
        buffer1.enqueue("A");
        buffer1.enqueue("B");
        buffer1.enqueue("C");
        buffer1.enqueue("D");
        buffer1.enqueue("E");
        assertEquals(5, buffer1.size);
        assertEquals(0, buffer1.front);
        assertEquals(4, buffer1.back);
    }
    
}
