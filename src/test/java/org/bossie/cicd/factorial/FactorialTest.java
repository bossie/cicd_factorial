package org.bossie.cicd.factorial;

import junit.framework.TestCase;

public class FactorialTest extends TestCase {
    public void testFactorial() {
        assertEquals(120, Factorial.factorial(5));
    }
}
