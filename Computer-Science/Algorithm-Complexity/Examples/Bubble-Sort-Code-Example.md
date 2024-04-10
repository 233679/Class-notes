# Bubble Code Example

```java
import java.util.Arrays;

public class Bubble {
    public static void main(String[] args) {

        int[] toSort = new int[]{2, 93, 0, 5654, 231, 7 }; // Array to sort


        int highestIndex = toSort.length - 1; // Gets the highest index of the array
        boolean performedSwap = false; // Stores if a value was swapped or not.

        // Iterates over the array once for each element.
        // The amount iterated decreases by one each time.
        for (int i = 0; i < (highestIndex - i); i++) {

            for (int swap = 0; swap < highestIndex - i; swap++) { // Iterates over the unsorted elements in the array

                if (toSort[swap+1] > toSort[swap]) continue; // Checks if the elements are out of order

                // Performs a swap
                int temp = toSort[swap];
                toSort[swap] = toSort[swap+1];
                toSort[swap+1] = temp;
                performedSwap = true;
            }

            if (!performedSwap) break; // If no swaps were performed then the array is sorted.
            performedSwap = false; // Resets the swap performed check.
        }


        System.out.println(Arrays.toString(toSort));

    }
}
```