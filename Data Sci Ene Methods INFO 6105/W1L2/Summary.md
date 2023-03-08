# W1L2 Summary

## Normal distribution

### A distribution is normal distribution when the symmetry about the center 50% of values less then mean and 50% greater than the mean. 
[Normal Distribution Graph]()

[Normal Distribution formual]()


## dplyr
    - Can solve the most common data manipulation operation.
    - Does split-apply-combine(SAC) logic
    - Provides simple functions for the most common data manipulation verbs.
    - Uses efficient data storage back-ends, less waiting time.
    - Doesn't care how data stores. 
    - Has default print() method to avoid print the entire page of data.
    - More consistent than base functions, when you master one, you know all. 

## Chaining
    - The dplyr API is functional in the sense that function calls don't have side-effects.
    - Either do it step by step or wrap the function calls inside each other if you don't want to save intermediate results.

### dplyr:filer()
    - selects a subset of the rows of a data frame.
    - filter(flights, month == 1, day ==1) is equivalent to 
      - fligts[flights$month ==1 & flights$day == 1,]

### dplyr:select()
    - rapidly zoom in on a usedful subset using operations that usually **only work on numeric varible** position.
    - select(flghts, year,month,day)

### dplyr:summarize()
    - use it with aggregate functions, which take a vector of values, and return a **single** number
    - some functions in base R: min(), max(), mean(),sd(),median(),n('number of observation in the current group'),n_distinct(x:'count the nunmber of unique values in x')

### Using %>%
    - **%>%** is aa pipe which connects the first and second function.
[General funcion]()
[%>% function]()


### dplyr:mutate()
    - Adds new columns that are function of exisiting columns
    - mutate(flights,
             gain = arr_delay - dep_delay,
             speed = distance / air_time*60)
    
## Graph in R
    - plot() prints the graph.