1. Spatial Locality refers to our data being stored independently of each other rather than having them all attached as an array. This helps performance because it is quicker to call a specific item of data than reference an entire range of items in an Array which may potentially contain massive amounts of data and be expensive to store in memory.
2. In my benchmark comparisons, arrays seem to be faster than LinkedLists but use more memory. 