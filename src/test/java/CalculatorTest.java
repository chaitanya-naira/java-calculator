public class CalculatorTest {

    public static void main(String[] args) {
        int result = add(10, 20);

        if (result != 30) {
            System.out.println("TEST FAILED");
            System.exit(1);
        }

        System.out.println("TEST PASSED");
    }

    // Simple test helper
    static int add(int a, int b) {
        return a + b;
    }
}
