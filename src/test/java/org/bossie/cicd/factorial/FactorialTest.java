package org.bossie.cicd.factorial;

import junit.framework.TestCase;

public class FactorialTest extends TestCase {
    public void testFactorial() {
        assertEquals(120, Factorial.factorial(5));
    }

    public void testThrowsOnNegativeNumber() {
        try {
            Factorial.factorial(-1);
            fail("expected an IllegalArgumentException");
        } catch (IllegalArgumentException e) { /* test succeeded */ }
    }
}
