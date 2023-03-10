# Part I Summary

## Table of Contents
- [Part I Summary](#part-i-summary)
  - [Table of Contents](#table-of-contents)
  - [Python](#python)
  - [The philosophy of Python](#the-philosophy-of-python)
  - [Operators](#operators)
    - [The Assignment operator `=`](#the-assignment-operator-)
  - [Singular Types and Data Structures](#singular-types-and-data-structures)
    - [Floats](#floats)
    - [Integers and `long` Integers](#integers-and-long-integers)
    - [Booleans](#booleans)
    - [More Complicated Operators](#more-complicated-operators)
    - [String](#string)
      - [Example](#example)
      - [Some functions](#some-functions)
    - [Container Types](#container-types)
      - [Lists](#lists)
      - [Tuples](#tuples)
      - [Sets](#sets)
      - [zip](#zip)

## Python
  - Simple: Easy to read and relativel easy to lean.
  - Expressive: Less line of code, less bugs and easy to maintain.
  - Powerful: works as script-type tool which can be applied into Big Data, High Performance Computing applications, data science, and etc.
  - Batteries included: huge standard libararies,
      (Well, personally I don't agree with, since if it is battery comsuing, why we don't use python in iot devices.)
  
## The philosophy of Python

```python
import this
```

  The Zen of Python, by Tim Peters

  Beautiful is better than ugly.

  Explicit is better than implicit.

  Simple is better than complex.

  Complex is better than complicated.

  Flat is better than nested.

  Sparse is better than dense.

  Readability counts.

  Special cases aren't special enough to break the rules.

  Although practicality beats purity.

  Errors should never pass silently.

  Unless explicitly silenced.

  In the face of ambiguity, refuse the temptation to guess.

  There should be one-- and preferably only one --obvious way to do it.

  Although that way may not be obvious at first unless you're Dutch.

  Now is better than never.

  Although never is often better than *right* now.

  If the implementation is hard to explain, it's a bad idea.

  If the implementation is easy to explain, it may be a good idea.

  Namespaces are one honking great idea -- let's do more of those!

## Operators
  - 1st component of programming: *Variables*
  - 2nd component of programming: *containers*
  - 3rd component of programming: *type*

### The Assignment operator `=`
`a = 5 `
In Jupyter Notebook, we can just type `a` next line after the abve code. 
We can also just type `a*2` to get the result directlty, since in the notebook, if we run the previous cell which contains assigned a already, it creates a temperate memory for the entire notebook.

`a += 2` for increment
`a -= 2` for decrement
`**` for expoenentiation means`x**2` means x^2

## Singular Types and Data Structures

### Floats
`x = 2.0` is a float type

### Integers and `long` Integers
  - Integer contains 32 bit, the simplest type.
  - `long` has no rang limitation in python, and python will convert `int` to `long` automatically.
    - long doesn't work anymore in python 3

### Booleans
  - Used to repsnet `Ture` and `False` values.
  - A locial Operation.


### More Complicated Operators
```python
# Modulo operation
7 % 3  # => 1

# Enforce precedence with parentheses
(1 + 3) * 2  # => 8

# negate with not
not True  # => False
not False  # => True

# Equality as a logical predicate is ==
1 == 1  # => True
2 == 1  # => False

# Inequality is !=
1 != 1  # => False
2 != 1  # => True

# More comparisons
1 < 10  # => True
1 > 10  # => False
2 <= 2  # => True
2 >= 2  # => True

# Note: Comparisons can be chained!
1 < 2 < 3  # => True
2 < 3 < 2  # => False
```

### String
- Generally, we use double quotes.
- However, if there is double quotes inside the sentence,
  we use single quotes.
- What about multiple lines? Triple Quotes!

`str` can help covert types like `float`,`int`, and `long` to `string`

A string can be added with/without `+`

A string can also be multipled: `"Hello" *3`
  - The above result will print like: HelloHelloHello

A string is a python *iterable*
  - "This is a string"[0] will print out 'T'


#### Example
  ```python
  sentence = """Who's going to win the Superbowl again?
  Mahomes maybe?"""
  len(sentence)     # = > 30
  sentence[0:9]     # = > "Who's goi"
  sentence[0:9:2]   # = > 'Wosgi'
  sentence[ : :-1]  # = > "?ebyam semohaM\n\n?niaga lwobrepuS eht niw ot gniog s'ohW"
  sentence[:-1]     # = > "Who's going to win the Superbowl again?\n\nMahomes maybe"
  ```
#### Some functions
```python
sentence.upper()# conveting all the letters to upper letters
sentence.endswith('x')# check whether the sentence is end with sepcific letter x, return a boolean resutl.
sentence.startswith('x') # check whether the sentence is statr with specific letter x, return a boolean result.
my_array = sentence.split() # by default split on whitespace, return a list. 
' '.join(my_array)# Adding a space between each sentence. Tips: my_array is a list. 
"The answer is %4.2f" % ( a ) # =>'The answer is 42.00'
"The answer is {0:<6.4f}, {0:<6.4f} and not {1:<6.4f} ".format(a,42.0001)#=>'The answer is 3.0000, 3.0000 and not 42.0001 '
```

**String is IMMUTABLE**
  
### Container Types
Container types are types that inlcude *many* values.
Some types are `list`,`tuple`,`set`, and `dictionary`
  - Set is similar to list, but will remove all the duplicates automatically.
  - Tuple is also similar to list, but **immutable**.
  - Dictionary allows to relate two items: A `Key` and a `Value`

#### Lists
  - list can contain anything, the same type or mixed type.
    - `str_list = ['thing', 'stuff', 'truc']`
    - `mixed_list = [1, 1., 2+3J, 'sentence', """long sentence"""]`
  - list can be printed by `for` loop
  - list is *iterable*, it can be accessed like strings/
    - `list[0]`
    - `list[::-1]`
  - list can create matrix too
    - ` x = [[1,2,3],[4,5,6]]`
    - `x[1][0]` will print 4.
  - `append` applies to list for adding new item.
    - `int_list.append('hello!')` prints [1, 2, 3, 4, 5, 6, 'hello!'].
  - list is **mutable**!
    - ` int_list[0] = 2` prints [2, 2, 3, 4, 5, 6, 'hello!'].
  - `[::-1]` will output the same result as `list.reverse()`
    - **HOWEVER**, `list.reverse()` will change the list itself while the `[::-1]` will not.

#### Tuples
  - Tuple, like list, is also iterable and can be indexed like list.
  - Tuple is **IMMUTABLE**
  - `int_tup = (1,2,3,5,6,7)` 
  - `int_tup[1:3]` prints (2,3)
  - `int_tup.index(5)` give the index of 5 which is 3.
  - the construction also works:
    - `tup = 1,2,3` gives a tuple output (1,2,3)
  
#### Sets
  - set doesn't have duplication. 
  - linear algebra works with set too, like Union,intersection, and etc.

 ```python
  empty_set = set()

  filled_set = {1, 2, 2, 3, 4}

  filled_set.add(5) 

  # Do set intersection with &
  other_set = {3, 4, 5, 6}
  filled_set & other_set  # => {3, 4, 5}

  # Do set union with |
  filled_set | other_set  # => {1, 2, 3, 4, 5, 6}

  # Do set difference with -
  {1, 2, 3, 4} - {2, 3, 5}  # => {1, 4}

  # Check if set on the left is a superset of set on the right
  {1, 2} >= {1, 2, 3}  # => False

  # Check if set on the left is a subset of set on the right
  {1, 2} <= {1, 2, 3}  # => True

  # Check for existence in a set with in
  2 in filled_set  # => True
  10 in filled_set  # => False
  10 not in filled_set # => True
  ```

#### zip
  ```python
  a = range(5) # print (list(a)) -> 0,1,2,3,4
  b = range(8,15)# print (list(b)) -> 8,9,10,11,12,13,14
  list(zip(a,b)) # [(0, 8), (1, 9), (2, 10), (3, 11), (4, 12)] 
  ```