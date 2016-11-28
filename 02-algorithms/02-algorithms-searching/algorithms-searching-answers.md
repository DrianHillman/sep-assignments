##### 01) Given the alphabetically sorted collection in this checkpoint, how many iterations would it take to find the value G using linear search?
This would take 7 iterations, O(n)

##### 02) Given the alphabetically sorted collection in this checkpoint, how many iterations would it take to find the value G using binary search?
G would be found on the 3rd iteration, O(log n)

##### 03) Calculate fib(10), fib(11), fib(12) by hand.
**fib(10):**
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55
fib(10) = 55

**fib(11):**
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
fib(11) = 89

**fib(12):**
0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144
fib(12) = 144



##### 01) Given an unsorted collection of a million items, which algorithm would you choose between linear search and binary search? Would you use an iterative or recursive solution? Explain your reasoning.
In this scenario it would have to be a linear search— an iterative solution. Binary search does is not viable for unsorted collections.

##### 02) Given a sorted collection of a million items, which algorithm would you choose between linear search and binary search? Would you use an iterative or recursive solution? Explain your reasoning.
In this scenario a binary search would be immensely more favorable. Due to the high volume of items in this collection, I would implement an **iterative** solution; because in most languages recursion turns out to be more costly in memory.