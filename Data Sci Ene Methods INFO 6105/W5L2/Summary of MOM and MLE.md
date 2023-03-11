# Method of Moments(MOM)
The mothod of moements simply assigns the empirical mean and variance to their theoretical counterparts.
- The counterpart can be read from the Histogram. 


The key is:

`alpha_mom = dp.mean()**2/dp.var()`

`beta_mon = dp.var()/dp.mean()`


# Method of Maximun Likelihood Estimation(MLE)
Estimating the paramater of a statistical model, given observation.

```python 
from scipy.special import psi, polygamma

# Note that log_mean and mean_log are parameters of the dlgamma function
dlgamma = lambda m, log_mean, mean_log: np.log(m) - psi(m) - log_mean + mean_log
dl2gamma = lambda m, *args: 1./m - polygamma(1, m)

# Calculate statistics
log_mean = precip.mean().apply(np.log)
mean_log = precip.apply(np.log).mean()

# Alpha MLE for December
alpha_mle = newton(dlgamma, 2, dl2gamma, args=(log_mean[-1], mean_log[-1]))

beta_mle = alpha_mle/precip.mean()[-1]
```