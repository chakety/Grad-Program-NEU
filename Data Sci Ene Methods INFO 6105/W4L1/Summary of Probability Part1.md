# Probability Part 1
Probability is just a fraction which we take numerator as the number of cases we want to happen, and the denominator is the number for all the caese might happen.

Simply, the measurement of you luck.(Just Kidding)

Some definition:
-   Experiment: A phenomenon with an uncertain outcome we can observe/
-   Outcome: The result of an experiment. AKA "Cases"
-   Sample Space: The set of all possible outcomes.
-   Event: A subset of possible outcomes that together have some property we are interested in.
    -   simply, the cases we want.


# Some Examples

## Brithday Probablity
We want to know what is the probability of two people share the same birthday in class of 25.
```python
from operator import mul
from functools import reduce

def shares_my_birthday(n=25):
    return 1/(n-1)

def two_students_share_same_birthday():
    l = [n for n in range(365,340,-1)]
    return 1-(reduce(mul,l,1)/(365**25))

print("YOU share birthday with another student: " + str(shares_my_birthday()))
print("2 students share birthday: " + str(two_students_share_same_birthday()))
```

## Dice
We want to know the probabilty the rolling even number.
first in first, we can have a defined function:
```python
from fractions import Fraction
def p(event, space): 
    "The probability of an event, given a sample space of equiprobable outcomes."
    return Fraction(len(event & space), 
                    len(space))
```

Next, we set a space and event:

Make D becomes the dice space like : `D = {1,2,3,4,5,6}`

And have `event = {2,4,6,}`

Then, we can just call the fucntion `p(even, D)` to get the rst.

## Urns, Permutations, and Combinations
Permutation: Order Matters.
Combination: Order doesn't matter

### Question:
An urn contains 23 balls: 8 white, 6 blue, and 9 red. We select six balls at random (each possible selection is equally likely). What is the probability of each of these possible outcomes:

All balls are red
3 are blue, 2 are white, and 1 is red
Exactly 4 balls are white

```python
def cross(A, B):
    """The set of ways of concatenating one item from collection A with one from B."""
    return {a + b 
            for a in A for b in B}

urn = cross('W', '12345678') | cross('B', "123456") | cross('R', "123456789")

import itertools

def combinations(items, n):
    "All combinations of n items; each combination as a concatenated str."
    return {' '.join(combo) 
            for combo in itertools.combinations(items, n)}

U6 = combinations(urn, 6)
#Question 1:
red6 = {b for b in U6 if b.count('R') == 6} 
p(red6, U6)

#Question 2:
b3w2r1 = {s for s in U6 if s.count('B') == 3 and s.count('2') == 2 and s.count('R') ==1}
p(b3w2r1, U6)
```