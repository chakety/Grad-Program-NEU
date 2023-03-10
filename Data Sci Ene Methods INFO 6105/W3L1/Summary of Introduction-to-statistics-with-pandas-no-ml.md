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

To reverse it, just use `nbadf.T`,but it won't change the nbadf itself, which means if we print the data of nbadf, it will display the same result as we did in the beginning. 

The type of nbadf is **pandas.core.frame.Dataframe**

For thoes have differen array length, simply use `pd.DataFrame()` will cause error

To fix it, changed`pd.DataFrame()` to `pd.DataFranme.from_dict(nba, orient = 'index')`

This will automatically add `None` for missing item.

To get the east row, try `nbadf.loc['east']`

To get the first column, try `nbadf.loc[:,0]`. This means to get all the rows with first column.

If we do not want to use `pd.DataFranme.from_dict(nba, orient = 'index')` all the time, we can also try to generat the data as dictionary.

Example is given like : `nba2 = {"east": {'MA': 'Celtics', 'IN': "Cavs"}, "west": {"CA": "Warriors", "CAS": "Lakers", "IL": "Chicago"}}`

In this example above, MA, In, CA, CAS, and IL are the index. Compare the result to the previous, we can say it customzied the name of index.

And if we try to look at `type(nbadf.loc['MA':'Celtics'])` , it is a **float**.

Hint: using `nbadf.loc[]` can type the name of index, but when using `nbadf.iloc[]`, it only allows to input **integer**.

we can also reindex the datafram. 

Using `obj2 = nbadf.reindex(['MA', 'IN', 'IL', 'CA', 'CAS'])` will change the data too. 

## How to apply math formulas to the data?

