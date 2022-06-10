# Example ----------------------------
# average rate job submission in a computer centre is 4 per minute, X = jobs submission per minute



# Example ----------------------------
# message arrive to a computer server at rate of 6 per hour, X = number of messages per hour


# E(X) = Lamda
"X = number of Events, distributed independently in time"
# X is a Poisson variable with PDF
"
                       lamda^x
 P(X = x) = e^-lamda * ------- ,     x = 0, 1,..., infinity
                         x!

 e = 2.718281828...
 X = event of interest
 lamda = average
"

# Example ----------------------------
# a computer system with a Poisson job-arrival stream at an average of 2 per minute.
# Determine the probability that in any 1 minute interval there will be:

# i) 0 jobs
# ii) exactly 3 jobs
# iii) at most 3 arrivals
# iv) What is the maximum jobs that should arrive within one minute with 90% certainty?

# -- -- -- -- -- -- -- --
# i) 0 jobs
"
                      2^0
 P(X = 0) = e^-2 * ------- ,     x = 0, 1,..., infinity
                      0!

 e = 2.718281828...
 X = 0
 lamda = 2
"
2.718281828^-2 # 0 = no need for rest of formula
dpois(0, 2) # pdf

# -- -- -- -- -- -- -- --
# ii) exactly 3 jobs
"
                      2^3
 P(X = 3) = e^-2 * ------- = .18
                      3!

 e = 2.718281828...
 X = 3
 lamda = 2
"
(2.718281828^-2) * (2^3)/ (3*2*1)
dpois(3, 2) #pdf

# -- -- -- -- -- -- -- --
# iii) at most 3 arrivals
"P(X <= 3) = p(0) + P(1) + P(2) + P(3)"
"
                              2               2^2               2^3
 P(X <= 3) = e^-2 + e^-2 * ------- + e^-2 * -------- + e^-2 * -------
                              1!               2!                3!

        = 0.1353  +   0.2707       +     0.2707      +    0.1805
        = 0.8571
"
ppois(3, 2)

# More than 3 P(X > 3)
# 1 - P(X <= 3) = 1 - 0.8571 = 0.1429


# -- -- -- -- -- -- -- --
# iv) What is the maximum jobs that should arrive within one minute with 90% certainty?
# i.e. 90% quantile
"
 Choose k so that:
                 P(X <= k) >= .9


"
qpois(.9, 2) # 4,
# There is a 90% chance the number of job submissions in any 1 minute does not exceed 4

# -----
# PDF
# 0 job submissions
dpois(0, 2) # = 13%

# 1 job submission
dpois(0, 2) + dpois(1, 2) # = 40%

# 2 job submissions
dpois(0, 2) + dpois(1, 2) + dpois(2, 2) # = 67%

# 3 job submissions
dpois(0, 2) + dpois(1, 2) + dpois(2, 2) + dpois(3, 2) # = 85%

# 4 job submissions
dpois(0, 2) + dpois(1, 2) + dpois(2, 2) + dpois(3, 2) + dpois(4, 2) # = 94%
# first value where it crossed 90% certainty


# Example ----------------------------
# website hit rate = 2 a day, X = number of days
# Whats the prob of 4 hits in a day?

# PDF P(X = 2)
x <- 0:12 # look at the first 13 probabilities (sum up to 1)
plot(x, dpois(x, 2),
     xlab="Number of Hits",
     ylab="P(X = x)", type="h",
     main="Web Site Hits: Poisson(2)")

# CDF P(X <= 2)
plot(x, ppois(x, 2),
     xlab="Number of Hits",
     ylab="P(X <= x)", type="s",
     main="Web Site Hits: Lamda=(2)")


# Example ----------------------------
# phone calls over 1 year period = average of 3 a day, X = num of calls a day
# P(X=20)?

x <- 0:12 # look at the first 13 probabilities (sum up to 1)
plot(x, dpois(x, 3),
     xlab="Number of Calls",
     ylab="P(X = x)", type="h",
     main="Calls to Mobile: Poisson(3)")

# CDF P(X <= 3)
plot(x, ppois(x, 3),
     xlab="Number of Calls",
     ylab="P(X <= x)", type="s",
     main="Calls to Mobile: Lamda=(3)")


# Applicatios of Poisson Distribution
# 1.
"Events distrbuted independently of one another in time"
# i.e number os calls in an hour
# 2.
"As an approximation to the binomial when p is samll and n is large"
# when examining the number of defectives in a large batch where p, the defective rate is usually small.

# Example ----------------------------
# company expects 2% of disk drives to malfunction during it's warranty period.
# Calculate the prob that in a sample of 100 disk drives,
# that not more than 3 will malfunction.
"
 num of disks k  |         Binomial         | Poisson Apprpximation
                 | (100Ck) .02^k .98^100-k  |  e^-2 2^k / k!
              0  |        0.13262           |  0.13534
              1  |        0.27065           |  0.27067
              2  |        0.27341           |  0.27067
              3  |        0.18228           |  0.18045
          Total  |        0.85890           |  0.85713
"

# Example ----------------------------

k <- seq(50000, 100000, 5000)
y <- 1 - exp(-(.0001)*k) # At least 1 in k minutes
plot(k, y, xlab="Running time of the package in minutes",
     ylab="Probability of at least one bug")
abline(h = .9995)
abline(v = 75000) # minutes

log(.0005, exp(1)^-.0001)
1 - dpois(0, .0001 * 76009)

# exp function
exp(1)

k<-20 # no errors occur in 20 minutes
exp(1)^(-.0001*k)
# or
exp(-.0001*k)

# Example ----------------------------
# average number of defects for wafer = 3
# redundancy allows up to 4 defects
# What is the probability that the redundancy will not be sufficient if the defects follow a Poisson distribution
# i.e what is the prob of getting more than 4 defects?
"
                      3^k
 P(X = k) = e^-3 * -------
                      k!

 P(X > 4)
"
"
 P(X > 4) = 1 - (P(X=0) + P(X=1) + P(X=2) + P(X=3) + P(X=4))

                           3^1   3^2    3^3    3^4
          = 1 - e^-3 (1 + ---- + ---- + ---- + ----)
                            1     2!     3!     4!

          = .1847368
"
e <- 2.718281828

1 - e^-3 * (1 + (3^1/1) + (3^2/factorial(2)) + (3^3/factorial(3)) + (3^4/factorial(4)))
1 - ppois(4, 3)



