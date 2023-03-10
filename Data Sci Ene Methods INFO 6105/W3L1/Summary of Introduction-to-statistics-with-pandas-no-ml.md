`pandas`
-   a Python package
-   fast
-   flexible
-   expressive
-   work with relation or labels data or both.

Application of `pandas`
- Tublar data with heterogeneously-typed columns, as in an SQL table or Excel.
- Ordered and unordered time serise (D1) data
- Matrix data
- other form of observation/statistic data sets.

Key features:
- shape mutability: Columns can be added or detele, index value can be modified, and dimension can be changed too. 
- Automatic and explicit data aligbment
- Can be merged and joining of data sets.
- Flexibile reshaping and pivoting of data sets
- Strong capability with differen file format.
- Extensibile with additional package.

# Introduction to pandas *Series*
`pandas` series are **vectors**

To use pandas, try` import pandas as pd`. 

An exmaple like: 
`obj = pd.Series([10,20,30,40,50])` 
will give:
```python
0  | 10
1  | 20
2  | 30
3  | 40
4  | 50
```
