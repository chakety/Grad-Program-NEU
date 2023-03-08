# Part I Summary

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
   ** - 1st component of programming: *Variables*
    - 2nd component of programming: *containers*
    - 3rd component of programming: *type***

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

