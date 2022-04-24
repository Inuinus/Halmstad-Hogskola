import org.junit.*;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertThrows;

public class MyStack_test {

    static MyStack<Integer> stack1;

    @Before  // before each test                                   
    public void setUp() {
        stack1 = new MyStack<>();
    }

    @After   // after each test                                   
    public void tearDown() {
        stack1 = new MyStack<>();
    }

    @Test                                          
    public void pushingNewObject() {
        stack1.push(1);
        stack1.push(2);
        stack1.push(3);

        System.out.println(stack1.pop());
        System.out.println(stack1.peek());
    }

    @Test                                          
    public void removingNewObject() {
        // TODO nullpointer exeption
        stack1.push(1);
        stack1.push(2);
        stack1.push(3);

        assertEquals(3, (Object) stack1.pop());
    }

    @Test                                          
    public void testingIterator() {
        // TODO nullpointer exeption
        stack1.push(1);

        for (int node : stack1) {
            assertEquals(1, node);
        }
    }

    @Test                                               
    public void negativeIndex() {
        // TODO
    }
    
}