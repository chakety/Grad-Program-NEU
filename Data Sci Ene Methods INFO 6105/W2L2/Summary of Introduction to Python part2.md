# Part 2 Summary
## Table of Content
1. [Duo-lipa Style Coding](#duo-lipa-style-coding)\
2. [(Cont.) Dictionaries](#cont-dictionaries)
   1. [Example](#example)
3. [Logical Operators](#logical-operators)
   1. [is/is not](#isis-not)
   2. [common comparison](#common-comparison)
   3. [All and Any](#all-and-any)
4. [Control flow Structures](#control-flow-structures)
   1. [if...elif....else](#ifelifelse)
   2. [The for loop](#the-for-loop)
   3. [try...except](#tryexcept)
5. [Recycling code in Python](#recycling-code-in-python)
6. [Functions and Anonymous Functions are first class in Python](#functions-and-anonymous-functions-are-first-class-in-python)
   1. [passing a fucntion to a function](#passing-a-fucntion-to-a-function)
   2. [Using `lambda` to define anonymous fucntion](#using-lambda-to-define-anonymous-fucntion)
7. [Generators](#generators)


## Duo-lipa Style Coding
 Example1: 
 ```python
 str_list = ['things', 'stuff', 'Jones']
 ```
 An "Ugly" code:
 ```python
    mylist = []
    i = 0
    for x in str_list:
        mylist.append('my ' + str(i) + ':' + x)
        i += 1 
 ```
 An "Pretty" code:
 `['element (' + str(i) + '): ' + x for i,x in enumerate(str_list)]`

 Both above code will print out 

['element (0): things', 'element (1): stuff', 'element (2): Jones']

 Example2:
 `a = [10,11,12,13,14]`
 To get each element add 3 if it greater than 5;

 An "Ugly" code will like:
 ```python
 for x in a:
    if (x > 5):
        print (x + 3)
    else:
        print(x)
 ```
 A "Pretty" code shall be: `[x + 3 if (x > 5) else x for x in a]`

## (Cont.) Dictionaries
- Maps a collection of values to a set of associated keys.
- Mutable but unordered.
### Example
```python
my_dict = {'a':16, 'b':(4,5), 'foo':'''(noun) a term used as a       
           universal substitute 
           for something real, especially when discussing technological ideas and 
           problems'''}

'k' in my_dict #checks whether the key 'k' stores in my_dict
my_dict.items()		# Returns key/value pairs as list of tuples
my_dict.keys()		# Returns list of keys
my_dict.values()	# Returns list of values
my_dict.get('k',-1) #check whether the 'k' has value in my_dict, if not, print -1.

for (k,v) in my_dict.items():
    print(k,v)
##a 16
##b (4, 5)
##foo (noun) a term used as a universal substitute 
##           for something real, especially when discussing technological ideas and 
##          problems

for k in my_dict.keys():
    print(k, my_dict[k])
##a 16
##b (4, 5)
##foo (noun) a term used as a universal substitute 
##           for something real, especially when discussing technological ideas and 
##          problems

for v in my_dict.values():
    print(v)
##16
##(4, 5)
##(noun) a term used as a universal substitute 
##           for something real, especially when discussing technological ideas and 
##           problems
```

## Logical Operators
- Test for some condition and return a boolean, either `True` or `False`
- Some Comparison Operators:
  - `>`: Greater than
  - `>=`: Greater than or Equal to
  - `<` : Less than
  - `<=`: Less than or Equal to 
  - `==`: Equal to
  - `!=`: Not Equal to

### is/is not
```python
x = 5.
y = 5

x == y # return True since they mathematically equal
x is y # return False since x is float and y is int type
```

### common comparison
```python
a = 5
b = 5
a == b  #=> True
a != b  #=> False
(a > 4) and (b < 7) #=> True
(a > 4) and (b > 7) #=> False
(a > 4) or (b > 7)  #=> True
```

### All and Any
```python
x = [5,6,2,3,3]
cond = [item > 2 for item in x] # => return a list: [True, True, False, True, True]
all(cond) # => False
any(cond) # => True
```

## Control flow Structures
Indentation is important in python!
But Jupyter Notebook will figure it out itself.

`'aa' if False else 'bb'`

### if...elif...else
```python
x = 10

if x < 10: # not met
    x = x + 1
elif x > 10: 
    x = x - 1 # not met either 
else: 
    x = x * 2
```

### The For loop
```python
count = 0
# x = range(1,10) # range creates a list ... 
# xrange is a convenience function, it creates an iterator rather than a list
# which has a smaller memory footprint
x = range(1,10) 
for i in x:
    count += i
    print(count)
```

### try...except
```python
text = ('a','1','54.1','43.a')
for t in text:
    try:
        temp = float(t)
        print(temp)
    except ValueError:
        print(str(t) + ' is Not convertible to a float')
```

## Recycling code in Python
Some of the functions may be reused several times, to save time, we can create a file end with **.py** 

try use `%%file [file name].py` to overwrite this file 
`%whos` can help to get all the valiables which declared in the notebook or external files.
`dir()` yeilds the functions
`help()` provides imformation about the module.
using the `[module name].DATA` can call thoses fucntions. 

## Functions and Anonymous Functions are first class in Python

### passing a fucntion to a function
```python
def create_adder(x):
    def adder(y):
        return x + y

    return adder
```

Both `create_adder(x)` and `adder(y)` are functions. 
Step by Step define can be:
- `add_10 = creater_adder(10)`
- `add_10(3)`
Duo-lipa way: `creater_adder(10)(3)`

### Using `lambda` to define anonymous fucntion

```python
def f(x):
    return x > 2

callable(f) # return True, callable is used for check a function.

#This function can also write with lambda function:
(lambda_:_>2)(3)
#it will give the same result as f(3)

callable((lambda_:_>2))# return  True

#We can also have two arguments:
(lambda x, y: x ** 2 + y ** 2)(2, 1)  # => 5
```

both `list` and `set` can be used as anonymous funtions

Python's `*args` and `**kwargs` constructs can iterate over **position argument** and named **arguments**

Example:
```python
def magic(*args, **kwargs):
  print ("unnamed args: ", args)
  print ("keyword args: ", kwargs)


magic(1, 2, 3, a=4,b=5,c=6) 
# gives (1,2,3) as args in tuple
# gives {'a': 4, 'b':5, 'c':6} as dict
```

## Generators
*Generates* values as they are requested instead of storing everything up front. 

A general code like:
```python
def first_n(n):
   '''Build and return a list'''
       num, nums = 0, []
    while num < n:
        nums.append(num)
        num += 1
    return nums
```
This function is straightforward, and it also creates a list of memory, with the number n increasing, the usage of memory also increaes. 

**Therefore, a generator can help!**
```python
def firstn(n):
    num = 0
    while num < n:
        yield num
        num += 1
```
Since `first_n(n)` is a function, we can use `print(first_n(30))` to print the results directly. **However** `first(n)` is a generator, we cannot print the result directly, we use *for loop*, *list* , or *set* to print instead.

**Note**

`doubles1 = [2 * n for n in range(50)]` is a list 

`doubles2 = (2 * n for n in range(50))` is a generator

`itertools.takewhile` can create iterator for a loop
```python 
def count():
    num = 0
    while True:
        yield num
        num += 1

import itertools

#add squares less than 100
squares = (i*i for i in count())
bounded_squares = itertools.takewhile(lambda x : x < 100, squares)
total = 0
for i in bounded_squares:
    total += i
total# => 285
```
`next` can get the next item. 


