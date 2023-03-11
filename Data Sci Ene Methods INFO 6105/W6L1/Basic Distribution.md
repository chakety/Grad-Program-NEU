# Basic Distribution

## Random Processes
- A **radom variable** is a varible are numberical outcomes of a random phonomenon.
  - Discrete random varible
    - The one which may take on only a countable number of distinct values.
    - Can be quantified.
  - Countinuous random varible
    - The one which takes an infinite numbe of possible values.
      - Represented by the area under a curve.
    - **Probability distribution funcions**.

A curve  which:
- has no negative values.
- the total are under the curve is equal to 1
are known as density curve.

## Uniform Distribution
- Since any interval of numbers of equal width has an equal probability of being observed, the curve describing the distribution is a rectangle, with constant height across the interval and 0 height elsewhere. Since the area under the curve must be equal to 1, the length of the interval determines the height of the curve.
- the most basic of the seven we show here. It has a single value which only occurs in a certain range while anything outside that range is just 0. It’s very much an on or off distribution. We can also think of it as an indication of a categorical variable with 2 categories: 0 or the value. Your categorical variable might have multiple values other than 0 but we can still visualize it in the same was as a piecewise function of multiple uniform distributions.

```python
# import uniform distribution
from scipy.stats import uniform

# random numbers from uniform distribution
n = 10000
start = 10
width = 20
data_uniform = uniform.rvs(size=n, loc = start, scale=width)

ax = sns.distplot(data_uniform,
                  bins=100,
                  kde=True,
                  color='skyblue',
                  hist_kws={"linewidth": 15,'alpha':1})
ax.set(xlabel='Uniform Distribution ', ylabel='Frequency')

plt.plot(data_uniform)


from pymc3 import Normal

y = Normal.dist(mu=-2, sd=4)
samples = y.random(size=1000)
print(samples.mean())
print(samples.std())
plt.plot(samples);
```

## Normal Distribution
- AKA Gaussian distribution
- Bell shape
  - described by its mean and standard deviation.
  - Desity curve is symmetrical.

```python
from scipy.stats import norm
# generate random numbers from N(0,1)
data_normal = norm.rvs(size=10000, loc=0, scale=2)

ax = sns.distplot(data_normal,
                  bins=100,
                  kde=True,
                  color='skyblue',
                  hist_kws={"linewidth": 15,'alpha':1})
ax.set(xlabel='Normal Distribution', ylabel='Frequency')
```
  
## Gamma Distribution
- Two parameter family of continuous probabiltiy distribution

```python
from scipy.stats import gamma
data_gamma = gamma.rvs(a=5, size=10000)

ax = sns.distplot(data_gamma,
                  kde=True,
                  bins=100,
                  color='skyblue',
                  hist_kws={"linewidth": 15,'alpha':1})
ax.set(xlabel='Gamma Distribution', ylabel='Frequency')
```

## Exponential Distribution
- The exponential distribution describes the time between events in a Poisson point process, i.e., a process in which events occur continuously and independently at a constant average rate. It has a parameter λ called rate parameter.

```python
from scipy.stats import expon
data_expon = expon.rvs(scale=1,loc=0,size=1000)

ax = sns.distplot(data_expon,
                  kde=True,
                  bins=100,
                  color='skyblue',
                  hist_kws={"linewidth": 15,'alpha':1})
ax.set(xlabel='Exponential Distribution', ylabel='Frequency')
```

## Poission Distribtuion
- Poisson random variable is typically used to model the number of times an event happened in a time interval. For example, the number of users visited on a website in an interval can be thought of a Poisson process. Poisson distribution is described in terms of the rate (μ) at which the events happen. An event can occur 0, 1, 2, … times in an interval. The average number of events in an interval is designated λ (lambda). Lambda is the event rate, also called the rate parameter. The probability of observing k events in an interval is given by the Poisson equation
- Note that the normal distribution is a limiting case of Poisson distribution with the parameter λ→∞. Also, if the times between random events follow an exponential distribution with rate λ, then the total number of events in a time period of length t follows the Poisson distribution with parameter λt.

```python 
from scipy.stats import poisson
data_poisson = poisson.rvs(mu=3, size=10000)

ax = sns.distplot(data_poisson,
                  bins=30,
                  kde=True,
                  color='skyblue',
                  hist_kws={"linewidth": 15,'alpha':1})
ax.set(xlabel='Poisson Distribution', ylabel='Frequency')
```

## Binomial Distribution
- A distribution where only two outcomes are possible, such as success or failure, gain or loss, win or lose and where the probability of success and failure is same for all the trials is called a Binomial Distribution. However, The outcomes need not be equally likely, and each trial is independent of each other. The parameters of a binomial distribution are n and p where n is the total number of trials, and p is the probability of success in each trial.
- can be thought as the sum of outcomes of an event following a Bernoulli distribution. The Binomial Distribution is therefore used in binary outcome events and the probability of success and failure is the same in all the successive trials. This distribution takes two parameters as inputs: the number of times on event takes place and the probability assigned to one of the two classes. The binomial distribution is frequently used to model the number of successes in a sample of size n drawn with replacement from a population of size N. If the sampling is carried out without replacement, the draws are not independent and so the resulting distribution is a hypergeometric distribution, not a binomial one. However, for N much larger than n, the binomial distribution remains a good approximatio. A simple example of a Binomial Distribution in action can be the toss of a biased/unbiased coin repeated a certain amount of times, or picking balls from an urn (with replacement) that contains balls of two different colors. The main characteristics of a Binomial Distribution are:
  - Given multiple trials, each of them is independent of each other (the outcome of one trial doesn't affect another one).
  - Each trial can lead to just two possible results (eg. winning or losing), which have probabilities p and (1 - p).
  
```python
from scipy.stats import binom
data_binom = binom.rvs(n=10,p=0.8,size=10000)

ax = sns.distplot(data_binom,
                  kde=True,
                  color='skyblue',
                  hist_kws={"linewidth": 15,'alpha':1})
ax.set(xlabel='Binomial Distribution', ylabel='Frequency')
```

## Bernoulli Distribution
- A Bernoulli distribution has only two possible outcomes, namely 1 (success) and 0 (failure), and a single trial, for example, a coin toss. So the random variable X which has a Bernoulli distribution can take value 1 with the probability of success, p, and the value 0 with the probability of failure, q or 1−p. The probabilities of success and failure need not be equally likely. The Bernoulli distribution is a special case of the binomial distribution where a single trial is conducted (n=1).
- has only two possible outcomes and a single trial. A simple example can be a single toss of a biased/unbiased coin. In this example, the probability that the outcome might be heads can be considered equal to p and (1 - p) for tails (the probabilities of mutually exclusive events that encompass all possible outcomes needs to sum up to one).

```python
from scipy.stats import bernoulli
data_bern = bernoulli.rvs(size=100,p=0.6)

ax= sns.distplot(data_bern,
                 kde=False,
                 color="skyblue",
                 hist_kws={"linewidth": 15,'alpha':1})
ax.set(xlabel='Bernoulli Distribution', ylabel='Frequency')
```
