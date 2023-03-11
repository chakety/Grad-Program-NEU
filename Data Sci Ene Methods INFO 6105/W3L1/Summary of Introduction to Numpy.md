# Numpy Library
A performance and math library.

## Pratical Introduction to Numpy
Supporting large multi-dimensional arrays and matrics, along with a library of high-levl mathematical functions to operate on these arrays.

Fouces on
  - Number calculation
  - Reads in fixed datatypes
  - Improving RAM efficiency
  - Teaching people to think in **Vectors**, **Mattrices**, and **Tensors**

### Array Attributes
Creating three arrays in 1D, 2D, and 3D.
```python
import numpy as np
np.random.seed(0) # zero reproducibility
x1 = np.random.randint(10, size = 6) # 1D
x2 = np.random.randint(10, size = (3,4)) # 2D
x3 = np.random.randint(10. size = (3,4,5)) # 3D
```
Since we use randint, we cannot change any value inside to be other type rath than int.

Eg: `x2[1,2] = 'Hello World!'` will cause value error

But values can be modified.

Each array has attributes:
- `ndim`: the number of dimensions
- `shape`: the size of each dimensions
- `size`: the total size of the array.

To access the values in different array:
- x1[index]
- x2[index][index] is equalvelent to x2[index,index]
- x3[index][index][index] is equalvent to x3[index,index,index]

#### 1D subarrays.
For array `x = np.arang(10)`
  - To get the first five elements, try `x[:5]`
  - To get the elements after index 5, try `x[5:]` 
  - To get the middle sub-array, try `x[4,7,2]`
  - To get every other element, try `x[::2]`

#### Multi-dimensional subarrays
For arrary `x2`:
  - To get two rows, three columns, try `x2[:2, :3]`
  - To get all rows, every other column, try x2[:,::2]

### Reshaping Arrays
Example:

`np.arange(1,28).reshape((3,3,3))`


`squeeze`: allow to structure out space, which means remove the axes of length one from array.

Both `reshap` and `squeeze` will use a no-copu view of the initial array, the origial data format will not be changed. 

Normally, it is common to convert a 1D array into 2D row or column matrix.

Any time you see a 1 in the number of elements of one of the dimensions, it means that we are doing an embedding of a lower-dimensional object into a higher-dimensional space.

### Array Concatenation and Splitting
#### Concatentation
Join two arrays in NumPy and takes a **tuple** or **list** of array as its first argument.

Some examples:
```python
x = np.array([1, 2, 3])
y = np.array([3, 2, 1])
# will print out array([1,2,3,3,2,1])

grid = np.array([[1, 2, 3],
                 [4, 5, 6]])
np.concatenate([grid, grid])
# will print:
#array([1,2,3],
#      [4,5,6],
#      [1,2,3],
#      [4,5,6])

np.concatenate([grid, grid], axis=1)
#will print 
#array([1,2,3,1,2,3],
#      [4,5,6,4,5,6])
```

#### Splitting of arrays
Opposite of concatenation. 

Example:
```python
x = [1, 2, 3, 99, 99, 3, 2, 1]
x1, x2, x3 = np.split(x, [3, 5])

#will print out [1,2,3] [4,5,6] [7,8,9]
``` 

### Finding maximum element
Using `numpy.argmax(a, axis=None, out =None)`, it returns the indices of the maximum value along an axis. 

Example：
```python
# numpy array
array = np.array([[1,2,3], [4,5,6]])

# index of maximum value
max_pos = np.argmax(array)

#max_pos = 5, the index of the largest value
```

Another Example can be:
```python
# numpy array
array = np.array([[1,2,3],[4,5,6]])
print(array)

# index of maximum value along axis 0
max_pos_0 = np.argmax(array, axis=0)
print(max_pos_0)
# array([1, 1, 1], dtype=int64)

# index of maximum value along axis 1
max_pos_1 = np.argmax(array, axis=1)
max_pos_1
# array([2, 2], dtype=int64)
```
### Plotting with matplotlib
By using `import matplotlib.pyplot as plt`, we can plot figures.

### Operation profiling
To interpret an input as a matrix, try:
```python
np.array('1,2,3,4')
np.array(np.mat('1,2; 3,4'))
```
### Random arrays
`data = np.random.rand(4,4,4)`

### Boolean indexing
We can use boolean expression as index. 

first in first, we need to create an array named `names`

`names = np.array(['Pratiksha', 'dino', 'Xinlin', "Tianqi", "Pranshu"])`

Next, we need to create an array with random data:

`data = np.random.rand(5,5)`

if we try `data[names == 'Pratiksha']`, we will get the value of first row in data. 

`data[names == 'Pratiksha']` is also equalvent to `data[[ True, False, False, False, False]]`

### Beginner Linear Algebra
`np.inv` means inverse matrix

two matrix X @ Y means matrix multiplication

### Numpy *'Object'*
```python
class Human(object):
    # A class attribute. It is shared by all instances of this class
    species = "H. sapiens"

    def __init__(self, name):
        # Assign the argument to the instance's name attribute
        self.name = name

        # Initialize property
        self.age = 0
        
    def say(self, msg):
        return "{0}: {1}".format(self.name, msg)\

a = Human("Dino")
b = Human("Elon")
c = np.array([a, b])

#array([<__main__.Human object at 0x00000128670E03D0>,
#       <__main__.Human object at 0x0000012866FEEC40>], dtype=object)
```

## Incredibly useful Numpy APIs
The numpy.linspace(start, stop, num=50, endpoint=True, retstep=False, dtype=None, axis=0) function returns evenly spaced numbers over a specified interval defined by the first two arguments of the function (start and stop — required arguments). The number of samples generated is specified by the third argument num.

If omitted, 50 samples are generated. One important thing to bear in mind while working with this function is that the stop element is provided in the returned array (by defaultendpoint=True), unlike in the built-in python function range.