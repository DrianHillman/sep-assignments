How does your data structure allow developers to access and manipulate the data?

# Software Engineering Principles
## Assignment 01
### Line
This `Line` structure instantiates with an array called with the method `members`. Each item of the array is a String containing the name of the line member.

__This data structure supports:__

* item insertion
* item removal
* item search
* calling the first person
* calling the middle person
* calling the last person

2. If a developer wanted to find a specific element in this structure, it can be called by `Line.search(person)` or `Line.members`.
3. Other real-world examples for this could be: an organ donor list, a product launch preorder, or the waiting system at the DMV

### Screen
This data structure uses two connected (inherited) objects, a Screen and a Pixel. A screen is a matrix of coordinates & values that contain pixels. A pixel is comprised of r,g,b,x,y values. 

1. A developer can use `Screen.insert(pixal, x, y)` to add a pixel to the screen. Pixels can be manipulated by adjusting `Pixel.red`, `Pixel.green`, `Pixel.blue`, `Pixel.x`, `Pixel.y` respectively, `Screen.matrix` is an object made up of all of these pixels.
2. If a developer wanted to find a specific element in this structure, you can use `Screen.matrix` to present the entire object, or the `Screen.at(x,y)` method to recall what is at a specific location.
2. Another real-world example of this could be: a city housing grid, or a checkerboard.