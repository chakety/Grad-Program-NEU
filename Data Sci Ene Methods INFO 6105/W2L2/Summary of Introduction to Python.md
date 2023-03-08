# Part I Summary
## Table of Contents
1. [Python](#python)
2. [The Philosophy of Python](#the-philosophy-of-python)
3. [Operators](#operators)
   1. [The Assignment operator `=`](#the-assignment-operator-`=`)


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
  

