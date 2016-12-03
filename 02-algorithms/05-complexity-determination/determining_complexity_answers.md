#### 1) What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
**O(1)** | This algorithm runs at constant time.

![algorithm](https://cldup.com/TQi27H53FY.png)

---

#### 2) What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
**O(n)** | This algorithm runs at linear time

![algorithm](https://cldup.com/62jlHF5dcw.png)

--- 

#### 3) What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
**O(n)** | This algorithm also runs linear time. The two `.length.times do` loops give us 2n, however, we remove the constant in asymptotic notation, leaving us with O(n) .

![algorithm](https://cldup.com/pbU3qFrO4k.png)
<!--Double check that it's 2n and not n^2, ask John-->

---

#### 4) What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
**O(n log n)** | This algorithm runs at loglinear time.

![algorithm](https://cldup.com/HQRMOi_PpX.png)

---

#### 5) What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
**O(n)** | This algorithm runs at linear time, it clearly iterates at the size of n

![algorithm](https://cldup.com/AV9yNU9KnU.png)

---

#### 6) What's the Big-O of the following algorithm? Submit your work and reasoning with your solution.
**O(n log n)** | This algorithm runs loglinearly. The main portion of the method runs at n but then there's an expensive recursive call at the end which bring us to n log n.

![algorithm](https://cldup.com/aMdcEBXVOw.png)