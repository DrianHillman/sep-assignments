#### 1) Describe an analogy for relating an algorithm that has efficiency O(1) and another algorithm that has O(2n).
The complexity of an algorithm that has O(1) is like blinking, meanwhile, an algorithm that has O(2<sup>n</sup>) has the complexity of a snowball rolling downhill— Mt. Everest.

#### 2) In plain English, what is the best case scenario for binary search?
The best case for binary search is a 1-item collection finding the value on the first attempt, or **constant time**.

#### 3) In plain English, what is the worst-case scenario for binary search?
The worst case for binary search is that the value is at the low index, high index, or not there at all. But still much less than linear time.

#### 4) In plain English, what is the bounded-case scenario for binary search?
The bounded case is that it will grow slightly based on the amount of elements in the collection, in **logarithmic time**.

#### 5) Create a graph using the data below. Here's a [CSV](https://bloc-global-assets.s3.amazonaws.com/images-SET/algorithms/loglinear_intro.csv) with the values you'll need.
![asymptotic-chart.png](https://cldup.com/f3FVBbnJBT.png)

#### 6) What's the asymptotic limit as n approaches infinity for the function defined by the values above?
It's limit is infinity. This function runs at exponential time. Very bad!

#### 7) What is the Big-O of an algorithm that has the data points above?
O(2<sup>n</sup>)

#### 8) Write a Ruby script that calculates and prints the input size to iterations for the worst-case similar to the graph above for linear search.
`ruby runtime_calculate.rb`
```
Input, Size (n)
0, 1
1, 2
2, 4
3, 8
4, 16
5, 32
6, 64
7, 128
8, 256
9, 512
10, 1024
11, 2048
12, 4096
13, 8192
14, 16384
15, 32768
```

#### 9) Create a graph from the output using Google Sheets or other graphing software. Analyze the graph and denote its Big-O somewhere on the graph.
O(2<sup>n</sup>)
![script_results.png](https://cldup.com/Gt6r6-sw_V.png)

#### 10) What is the Big-O of binary search?
The worst case for binary search is O(log n) — logarithmic time

#### 11) What is the Big-Ω of binary search?
The best case is Ω(1) — constant time

#### 12) What is the Big-Ө of binary search?
The average case is Ө(log n) — logarithmic time