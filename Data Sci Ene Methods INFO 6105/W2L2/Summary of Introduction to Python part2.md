# Part 2 Summary

## Duo-lipa Style Coding
 Examples: 
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
    