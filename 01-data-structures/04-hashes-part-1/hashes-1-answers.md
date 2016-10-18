# Software Engineering Principles
## Assignment 04 Answer

1. Doubling the size of the underlying array is a poor idea because you'll never have a prime number as your size and the size of your array can get very large. It would be much better to find the closest prime number larger than the next highest base-2 value that is larger than the array size. This will create less collisions. Arrays are also expensive in memory so doubling the array size will hurt processing time.