public class MultiplicationTable {
    public static void main(String[] args) {
        if (args.length < 1) {
            System.err.println("Usage: java MultiplicationTable <number>");
            System.exit(1);
        }

        try {
            int number = Integer.parseInt(args[0]);
            for (int i = 1; i <= 10; i++) {
                System.out.printf("%d x %d = %d%n", number, i, number * i);
            }
        } catch (NumberFormatException ex) {
            System.err.println("Please provide a valid integer.");
            System.exit(1);
        }
    }
}
