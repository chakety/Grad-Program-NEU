# Part 2 Summary

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

```