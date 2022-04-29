import org.junit.*;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class MaxPQ_Test <T extends Comparable <T>> {

    static MaxPQ<Integer> mpq;

    @Before  // before each test                                   
    public void setUp() {
        mpq = new MaxPQ<Integer>();
    }

    @After   // after each test                                   
    public void tearDown() {
        mpq = new MaxPQ<Integer>();
    }

    @Test                                          
    public void test_should_be_() {
        T[] array1 = (T[]) new Comparable[]{12, 7, 6, 10, 8, 20};

        MaxPQ mpq1 = new MaxPQ(array1);
        
        System.out.println("Test");
        System.out.println(array1[3]);
        
        for (int i = 0; i < mpq1.size; i++) {
            System.out.println("a: " + mpq1.a[i]);
        }

        // assertEquals(0, buffer1.size);
    }


    
}
