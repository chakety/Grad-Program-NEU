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

0  | 10
1  | 20
2  | 30
3  | 40
4  | 50


The series can automatically get its own index.
eg:
`obj.value # -> array([10,20,30,40,50], dtype = int64)`
`obj.index # -> RangeIndex(star = 0, stop = 5, step = 1)`

The name of index can also be changed like:

`obj = pd.Series([10,20,30,40,50], index = ['a','b','c','d','e'])`
will print like:

a   10
b   20
c   30
d   40
e   50

To access the value, either access the index name `obj['a]`
or the value of index `obj[0]` can get the same answer.

The value inside can also be changed: `obj['a'] = 'foo'`

The type of obj is **pandas.core.series.Series**.

# Introduction to pandas *DataFrames*

Dataframes are excel spreadsheets, also known as matrices mathematically.

Example: import a data as a dictionary structure:
`nba = {"east": ['Celtics', "Cavs", "76ers"], "west": ["Warriors", "Lakers", "Chicago"]}`
`nbadf = pd.DataFrame(nba)`

To reverse it, just use `nbadf.T`

The type of nbadf is **pandas.core.frame.Dataframe**

Since it imports as a 2D array, the length must be the same.

Example like `nba = {"east": ['Celtics', "Cavs"], "west": ["Warriors", "Lakers", "Chicago"]}` will cause error.


Unless, we can try: `nba = {"east": ['Celtics', "Cavs"], "west": ["Warriors", "Lakers", "Chicago"]}`

This will automatically add None for missing item.

