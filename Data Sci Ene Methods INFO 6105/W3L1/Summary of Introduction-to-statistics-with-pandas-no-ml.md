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
| idx | value |
| --- | ----- |
| 0   | 10    |
| 1   | 20    |
| 2   | 30    |
| 3   | 40    |
| 4   | 50    |


The series can automatically get its own index.
eg:
`obj.value # -> array([10,20,30,40,50], dtype = int64)`

`obj.index # -> RangeIndex(star = 0, stop = 5, step = 1)`

The name of index can also be changed like:

`obj = pd.Series([10,20,30,40,50], index = ['a','b','c','d','e'])`
will print like:
| idx | value |
| --- | ----- |
| a   | 10    |
| b   | 20    |
| c   | 30    |
| d   | 40    |
| e   | 50    |

To access the value, either access the index name `obj['a']`
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

We can also reindex the datafram. 

Using `obj2 = nbadf.reindex(['MA', 'IN', 'IL', 'CA', 'CAS'])` will change the data too. 

## How to apply math formulas to the data?
Using `pd.apply()`
Wrting a dataframe with numbers:
```python
import numpy as np
nbadf3 = pd.DataFrame(np.random.randn(3,3), index=['MA', 'NY', 'TX'], columns=['Celtics', 'Knicks', 'Rockets'])
```
we can first define a function:
```python
def f(x): return x.max() - x.min()
```
Then, try `nbafd.apply(f)`.

## 3D Dataframes
We can also create a 3D datarframe with three aixs.

Example:
```python
import numpy as np
import pandas as pd

A = np.array(['one', 'one', 'two', 'two', 'three', 'three'])
B = np.array(['start', 'end']*3)
C = [np.random.randint(10, 99, 6)]*6
df = pd.DataFrame(zip(A, B, C), columns=['A', 'B', 'C'])
df.set_index(['A','B'], inplace=True)
```
To extend the subline length to the max, try this:
```python
max_len = max(len(sublist) for sublist in C)
for sublist in C:
    list(sublist).extend([np.nan]*(max_len - len(sublist)))
``` 

# Finance with pandas
## Time Serise Exploratory Data Analysys(EDA)
  - A series of data points ordered in time.
  - Time is the often independt variable 
  - Makes forcast for the future.

## EDA characteristics:
  - Is it **stationary**? if yes, it won't change over time. 
  - Is the target varible **autocorrelated**?
  - Is there are **seasonality**? periodic fluctuation. 

## Moving Average
  - Simply states that the *next* observation is the mean of *all past* observation

## Exponential Smoothing
  - Uses a similar logic to moving average.
  - Has different decresing weight to each observations. 
  
  ### Double Exponential smoothing
  - Used when there is a trend in the time serise. 
  - s recursive use of exponential smoothing **twice**
  ### Triple Exponential smoothing
  - Adding a seasonal smoothing factor.
## Modeling
  - If s serise was truned into Stationary process.The Dickey-Fuller test can be applied for identification.
    - if the result is less than 0.01, the time series is stationary.
In addition, the autocorrelation plot can also tell thether the date is seasonality or not.
  - The autocorrelation repsents the degree of similarity a given time series and a lagged version of itself over successive time intervals.
  - It measures the relationship between a varibale's current value and its past value.
  - **HINT**: Uncorrelated does not mean *random*. It just means there is no relation. 
    - model of validation can check the random.

# Interaction learning with pandas
Basically, how to use it to import Youtube Video.
```python
from IPython.display import YouTubeVideo
YouTubeVideo('T5pRlIbr6gg')
```
# Data Aggregation & Pivoting with pandas
To sorting data, try `df.sort_values()`

To calculate the sum, try `df['Total'] = df.iloc[::,4:10].sum(axis = 1)`

To rearrange the columns, try:
```python
cols list(df.columns) #To make the name of index a list.
df = df[cols[0:4]] + [cols[-1]] + cols[[4:12]]# rearrage the columns. since we have the 'Total' as the last one, we just move it.
```

