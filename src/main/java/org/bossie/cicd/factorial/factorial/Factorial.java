package org.bossie.cicd.factorial.factorial;

public class Factorial {
    public static long factorial(long x) {
        if (x < 0) {
            throw new IllegalArgumentException("should be a positive number");
        } else if (x == 0) {
            return 1;
        }

        return x * factorial(x - 1);
    }

    public static void main(String[] args) {
        if (args.length == 0) {
            System.out.println("Usage: Factorial <x>");
            System.exit(1);
        }

        System.out.println(factorial(Long.valueOf(args[0])));
    }
}
