# QUESTION 3 [TOTAL MARKS: 25]
# At a particular garage 20% of the cars that arrive for repair have engine trouble.
# Upon arrival at the garage an engine diagnostic test is carried out on the car, but this
# engine diagnostic test is far from perfect. If the car has engine trouble the diagnostic
# test will turn out positive with a probability of 0.9. If the car does not have engine
# trouble, the diagnostic test will turn out positive with a probability of 0.05.

"20% defective rate" # 80% good
"if defective = .9"
"else .05"

# Geometric Distribution
# Q 3(d) [8 Marks]
# If 10 cars arrive to the garage on a particular day, what is the probability that:
# (i) none of the cars will have engine trouble.


# (ii) the first car with engine trouble that arrives to the garage that day will be
# the 4th car.
"Things that involve the first of something happening use Geometric Distribution"
"X = Number of trials to the first success"
# PDF
"P(X = x) = q^x-1 p" # prob it will happen on the Xth trail
"P(X = 4) = P(1st 3 non-defective) * P(4th defective) = .8^3 * .2"
(.8^3)*.2
(.8 * .8 * .8) * .2
# or
# 3 successes then failure in R
dgeom(x = 3, prob = .2)

# CDF example:
"P(X <= x) = 1 - q^x"
# p = .2
# q = .8
# x = 4
"P(X <= 4) = 1 - (.8)^4" # within first 4
1 - ((.8^4))
1 - ((.8 * .8 * .8 * .8))
pgeom(3, .2)

# p = success
# q = failure 1 - p

# PDF of a geometic random variable
"P(X = x) = q^x-1 p" # prob it will happen on the Xth trail
# whats the prob a head will be tossed on the 5th trail
"P(X = 5) = P(1st 4 non-defective) P(5th defective) = .5^4 * .5"
dgeom(x = 4, prob = .5) # in R x = to first 4 failures
(.5^4) * .5
# first 4 are ok 5th H
"T  T  T  T    H p p p p p"
(.5*.5*.5*.5)*.5

x<-0:9 # number of tosses
plot(x+1, dgeom(x, prob = .5), xlab = "X = Number of Trials", ylab = "P(X=x)",
     type = "h", main="First Head, p = .5")

# CDF of a geometic random variable
"P(X <= x) = 1 - q^x" # prob it will happen on or before the Xth trail
# whats the prob a head will be tossed within the first 5 trails
"P(X <= 5) = 1 - (prob of tails)^5"
1 - ((.5*.5*.5*.5)*.5)
pgeom(4, .5)

x<-0:9 # number of tosses
plot(x+1, pgeom(x, prob = .5), xlab = "X = Number of Trials", ylab = "P(X<=x)",
     type = "h", main="First Head, p = .5")

# Quantile Function
# 20% defective rate, min number of inspections so prob of observing a defective is more than 75%
"Choose k so that P(X <= k) >= .75"
qgeom(.75, .2) # 6 failures before first success


# i)
"10 cars no car trouble"
# ii)
# independent events
"p p p q p p p p p p"


# --- --- --- --- ---
#Q 5(b) [12.5 Marks]
#In a certain long document, there is an average of 0.3 typographical errors per 100
#words of text.

# (i) What is the mean number of words between errors?
"E(X) = 1/p"
1/.3 # incomplete

# (ii) What is the probability of there being at least 100 words before the first error?
# (iii) How many words would there be on a page, if the probability of 0 errors on a page was 20%?


#=================================

"Markov Property"

# first 10 trials are free of defectives
# first defect occurs on the 15th trail
# P(X = 15 | X > 10)/ P(X > 10)
" q^15-1 * p / q^10   =    q^5-1 * p = P(X=5)" # first 10 trails are irrelavent