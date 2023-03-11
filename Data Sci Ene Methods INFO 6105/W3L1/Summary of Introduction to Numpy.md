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
