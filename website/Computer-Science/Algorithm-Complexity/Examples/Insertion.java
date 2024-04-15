import java.util.Arrays;

public class Insertion {

    public static void main(String[] args) {

        final int[] toSort = new int[]{2, 93, 0, 5654, 231, 7 }; // Array to sort

        int length = toSort.length; // Finds the length of the array


        for (int arrayIndex = 0; arrayIndex < length; arrayIndex++) { // Iterates over each element within the array.

            int key = toSort[arrayIndex]; // Gets the current element.
            int decIndex = arrayIndex -1; // Gets the previous index

            // If the previous index contains a value that is bigger, swap them.
            // Repeat until the start of the array is reached or the above condition is no longer true.
            while (decIndex >= 0 && toSort[decIndex] > key) {
                toSort[decIndex + 1] = toSort[decIndex];
                decIndex = decIndex - 1;
            }

            toSort[decIndex + 1] = key;
        }


        System.out.println(Arrays.toString(toSort));

    }

}