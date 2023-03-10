# Introduction to Statistic

Data Science is all about looking at the data and going back to the past by building the models that gave rise to the data.
Baiscally, what we saw in the past provide the view of future. 

Statistics can be the science measures the centeral tendencies, the variablibilty, and relastionship amongest data.
  - That's called **monments**. 

For me: Statistics is the methodology to gathering all the information and seeking the pattern between all the un-uniform data. 

## Processing
### Measure of *central* tendency
- The **mean**, **median**, and **mode**are the measure of central tendency.
  -  Mean is the aritmetic average of a set of numbers, or distribution.
  -  Median is the midpoint or the middle value in ordered ascending dataset.
    - Generally used for skewed(non-normal) distribution.
  - The mode shows the value occures the most.

#### Boxplots and histogram
- The boxplot of the dataset tells all possbile values in the dataset.
- Histograms are a way to summarized the distribution, which is split into categories or bins with same size usually.

### Measure of Varibaility(or Spread)
- The **range** is the difference between the largest and smallest value in the data.
- The **variance** is calculated by computing the difference between every data point and the mean squaring that value and summing for all available data.
  - Squaring helps to deal with negative value, and amplifies the effect of large difference. 
  - The problem is, since it is calculated by squaring, it doesn't have the same unit of measurement as the original data.
- Therefore, we use **Standard Deviation** .
  - It is in the original unit.
- **Interquartile Range(IQR)**: Data is sorted into ascending order and divided into four quarters.
  - It measures then the arability between the upper(75th) and lower(25th) quartiles.  
- All the result above can also be seen in the `df.describe()` function.
  
### Measures of relationship: Convariance and Correlation
- **Convariance** is a measure that indicates how two variables are related from a linear perspective. 
  - A positive covariance means the variabale are positively linearly related.
- **Conrrelation** is the convariance renormalized, which is expressed in %. 
  - It is a unit of measure that *standardlized* the measure of linear interdependence between two variables, and tells how closely they move.
  - The correlation coefficient will always take on a value between -1 and 1.

**Pariplots** plot all column of a dataset against each other. 

#### Spearman Correlation
It forgets the variable value and consider only they relative position.

#### Pearson Correlation
The correlation between the rank coeffienients.

#### Correlation Matrix
Used to take a look a the corrlation between all variables in the dataset.