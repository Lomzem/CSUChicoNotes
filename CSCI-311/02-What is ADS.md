---
id: What is ADS
aliases: []
tags: []
---

## What is an algorithm?
A sequence of instructions/operations defining how to map inputs to outputs

## What are data structures?
A specific way to organize data

## Algorithm Performance
Two types: **temporal**, **spatial** performance

### Temporal Performance
How quickly job gets done

## Pseudocode
- High level algorithm description that facilitates analysis and is easily translated into a program
- Clear and concise
- Precise and unambiguous
- Programming language agnostic

# Atomic Operators
- Math ops (Arithmetic & Logical)
- Data access (Loading),

## Atomic Count Example 1
```
val % 2 == 0
```
3 Total:
```val```: access
```%```: arithmetic
```==```: arithmetic (logical comparison)

## Atomic Count Example 2
```
i++
i = i + 1
```
3 Total:
```i```: access
```=```: loading
```+```: arithmetic

## Atomic Count Example 3
```python
function sumEven(arr):
    # don't necessarily have to count initialization as step in pseudocode
    total = 0 # 1, assignment NOT initialization
    for val in arr: # n(2 + 3 + 4)
        # assign val, access arr, +2
        if val % 2 == 0: # 3, loading, arithmetic, comparison
        total = total + val # 4, loading(total), arithmetic, assignment, loading(val)
    return total # 2
    # complexity: 1 + 9n + 2 = 9n + 3
```
## Atomic Count Example 3
```python
# return sum of squares of all members of a vector with size n
def func(v):
    i = 1
    sum = 0
    while i <= v.size(): # (n)(8 + 3) + 3
        # 3, v.size -> access, i -> access, <= -> access
        sum += v[i] * v[i]
        # sum -> access
        # += -> arith, load
        # v -> access
        # [i] -> access
        # * ->access
        # v -> access
        # [i] -> access
        i += 1
    return sum
```

## Atomic Count Example 4
```c++
// 3 + 13(n) + 3 + 2 = 8 + 13n
int func(v) {
    int max = v[0];
    for (int i = 0; i < v.size(); i++) { // int i = 0, 1; i < v.size(), 3 access comparison access; i++; 3 load, access, arith
        if (max < v[i]) {
            max = v[i]; // 3, dont need to access val of max, load, access, access
        }
    }
    return max;
}
```

## Atomic Count Example 4
```c++
// n by n matrix
int func(v) {
    int sum = 0; // +1
    for (int i = 0; i < v.size(); i++) { // +1, +n(3+3+j), +3
        for (int j = 0; i < v.size(); j++) { // j = +1, +n(3+3+8), +3
            sum += v[i] * v[j];
        }
    }
    return sum; // +2, return, access
}
```
## Atomic Count Example 5
```c++
int func(n) {
    int result = 0; // 1
    for (int i = 0; i < n; i++) { // 1 + 3 + n(3 + 3 + j)
        // j = 1 + 3 + i(3 + 3 + r)
        for (int j = 0; j < i; j++) {
            result += j * j; // r = 6
        }
    }
    return result; // 2
}
```
