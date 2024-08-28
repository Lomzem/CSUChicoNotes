---
id: 03-Insert-Sort
aliases: []
tags: []
---

Is an [[02-What is ADS.md##What is an algorithm?]]

# Basic Directions

1. Start at 1th index. Check if 1th < 0th. If yes, flip them.

2. Go to next index. Check if 2nd < 1st. Then, flip. Now check if 1st < 0th. Flip. Repeat etc. until end of list

# Insert Sort Code Example
```c++
vector<int> insertSort(vector<int> arr) {
    int i(1);
    while (i < arr.size()) {
        int j(i);
        while (j > 0 && arr[j] < arr[j-1]) {
            int temp(arr[j]);
            arr[j] = arr[j-1];
            arr[j-1] = temp;
            j--;
        }
        i++;
    }
    return arr;
}
```
