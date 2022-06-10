# At a particular garage 20% of the cars that arrive for repair have engine trouble.
# Upon arrival at the garage an engine diagnostic test is carried out on the car, but this
# engine diagnostic test is far from perfect. If the car has engine trouble the diagnostic
# test will turn out positive with a probability of 0.88. If the car does not have engine
# trouble, the diagnostic test will turn out positive with a probability of 0.02.

# Q 3(d) [8 Marks]
# If 20 cars arrive to the garage on a particular day, what is the probability that:
"20% defect, 80% good"
# (i)
# 7 of the cars will have engine trouble
# whats the probability 7 will be defective
# n = 10
# x = 7
"
 Formula
            | 10 |
 P(X = 7) = |    | (.2)^7 (1 - (.2))^10-7
            | 7  |

"
choose(10, 7) * (.2)^7 * (1 - (.2))^3 # = .00078

"Conditions
 n repeated trials
 success or failure
 prob of a success p is constant from trial to trial
 repeated trials are indepentdent
"
# X = number of successes in n trials
# PDF
"
 Formula
            | n |
 P(X = x) = |   | p^x * q^n-x
            | x |

 n = no of trials
 p = probability of success
 q = 1 - p = probability of failure
 x = no of successes in n trials
"
# PDF
# Example: ------------------------------
# prob of 1 terminal ready is .95
# prob that 3 ready terminals in 5 terminals
#            | 5 |
# P(X = 3) = |   | (.95)^3 (.05)^2
#            | 3 |
dbinom(x = 3, size = 5, prob = .95)
# for all probs
x <- 0:5
dbinom(x, size = 5, prob = .95)
plot(x, dbinom(x, size = 5, prob = .95),
     xlab="Number of Ready Terminals", ylab="P(X = x)", type="h", main="Ready Terminals, n = 5, p = .95")

# PDF
# Example: ------------------------------
# for tossing a coin 10 times and getting heads
x <- 0:10
round(dbinom(x, 10, .5), 4)
# 0 H    1 H    2 H    3 H    4 H    5 H    6 H    7 H    8 H    9 H    10 H
# 0.0010 0.0098 0.0439 0.1172 0.2051 0.2461 0.2051 0.1172 0.0439 0.0098 0.0010

# CDF
# Example: ------------------------------
# prob of 1 terminal ready is .95
# prob that 3 or less ready terminals in 5 terminals
"
 Formula: work out each indepently then add

 P(X <= x) = P(X = 0) + P(X = 1) +...+ P(X = x)

                   | n |                     | n |
           = q^n + |   | * p^1 * q^n-1 +...+ |   | * p^x * q^n-x
                   | 1 |                     | x |
"
"
 P(X <= 0) = P(X = 1) + P(X = 2) + P(X = 3)

                       | 5 |                   | 5 |                   | 5 |
           = (.05)^5 + |   | (.95)^1 (.05)^4 + |   | (.95)^2 (.05)^3 + |   |(.95)^3 (.05)^1
                       | 1 |                   | 2 |                   | 3 |

          = 0.0000003125 + 0.0000296875 + 0.0011281250 + 0.0214343750

          = 0.0225925
"
# Complement event
# 4 or more terminals ready
"
 P(X >= 4)
 1 - p(X <= 3)
 1 - .0226
 = .9774
"
# NOTE: dbinom if we wanted exactly 3, pbinom for less than.
# P(X<= 3)
pbinom(3, 5, .95)

# P(X > 3)
1 - pbinom(3, 5, .95)

plot(x, pbinom(x, size = 5, prob = .95),
     xlab="Number of Ready Terminals", ylab="P(X <= x)", ylim=c(0, 1), type="s", main="n = 5, p = .95")


# Quantile
# Example: ------------------------------
# IC chips 20% defective
# batch of 20
# up to how many defectives will the batches contain with at least 95% certainty?
"
 Choose k:
      P(X <= k) >= .95
"
qbinom(.95, 20, .2) # = 7
# 95% of these batches would contain less than or equal to 7 defectives.

# Example: ------------------------------
# n frames per packet, prob a frame gets through without an error is .999.
# What is the max size a packet can be so that the prob that it contains
# no frame in error is at least .9?

# X = number of frames in error in a packet of size n.
"P(X = 0) = .999^n"
# how big can we make ^n so it wont go below .9
"
 Choose n so that:
     .999^n > 0.9
 n = 105 (answer)
"
# When the packet size reaches 105, the probability of it being error free is below 90%
# could use for loop or
# log of .999 to base of 0.9 to get 105
log(.9, .999)
.999^105

n <- 1:200
plot(n, .999^n, type = "l",
     ylab="P(Frames in error = 0)",
     xlab="Number of frames in a packet",
     ylim=c(.9, .999))

# Mean of Binomial Distribution
"
 Formula
                n
 mean = E(X) = SUM xp(x)
               x=0

                n      | n |
             = SUM x * |   | * P^x * q^n-x
               x=0     | x |
"
"E(X) = n * p" # n = number of departments * p = probs, q = 1 - p
# add them up to get mean
# n = number of trials

"Variance = n * p * q"
# mean n * p
100 * .01 # = 1

# variance n * p * q
100 * .01 * .99 # = .99

# --- --- --- --- ---
#Q 5(b) [12.5 Marks]
#In a certain long document, there is an average of 0.3 typographical errors per 100
#words of text.

# (i) What is the mean number of words between errors?
"E(X) = 1/p"
1/.3 # incomplete

# (ii) What is the probability of there being at least 100 words before the first error?
# (iii) How many words would there be on a page, if the probability of 0 errors on a page was 20%?



