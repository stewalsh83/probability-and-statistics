# Q 1(a) [18 Marks]
# Suppose you have 5 boxes each of which contains five balls: a red ball, a blue ball, a
# green ball, a purple and a yellow ball.

red <- 1
yellow <- 1
purple <- 1
green <- 1
blue <- 1

box1 <- red + yellow + purple + green + blue
box2 <- red + yellow + purple + green + blue
box3 <- red + yellow + purple + green + blue
box4 <- red + yellow + purple + green + blue
box5 <- red + yellow + purple + green + blue

# If you draw a ball at random from each box what is the probability that:

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (i)
# the first ball is yellow
yellow/box1
1/5
1/choose(5, 1)

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (ii)
# the second ball is yellow given the first ball was yellow
"p(second=yellow | first=yellow)"
yellow/box1 # 1/5
yellow/box2 # 1/5 because it's an independent event
# p(E1 n E2)
(1/5) * (1/5) # = 1/25
1/25
#(1/5)^5
5/19 * 10/20
yellow/box1 * yellow/box2
# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (iii)
# all the balls are the same colour
(1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5)
# or
5 * (1/5 * 1/5 * 1/5 * 1/5 * 1/5)
# or
y <- yellow/box1 * yellow/box2 * yellow/box3 * yellow/box4 * yellow/box5
r <- red/box1 * red/box2 * red/box3 * red/box4 * red/box5
b <- blue/box1 * blue/box2 * blue/box3 * blue/box4 * blue/box5
g <- green/box1 * green/box2 * green/box3 * green/box4 * green/box5
p <- purple/box1 * purple/box2 * purple/box3 * purple/box4 * purple/box5
y + r + b + g + p
# or
(1/5)^5 + (1/5)^5 + (1/5)^5 + (1/5)^5 + (1/5)^5
# or
5*(1/5)^5

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (iv)
# there are no balls of the same colour
(1 - ((1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5)
))
# or
(1 - (5 * (1/5 * 1/5 * 1/5 * 1/5 * 1/5)))
# or
1 - (y + r + b + g + p)
# or
1 - ((1/5)^5 + (1/5)^5 + (1/5)^5 + (1/5)^5 + (1/5)^5)
# or
1 - (5*(1/5)^5)

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (v)
# either the first ball or last ball or both are red
"p(first=R U Last=R) = p(first=R) + p(Last=R) - (p(first=R n Last=R))"
(red/box1 + red/box5) - (red/box1 * red/box5)
# or
5/20 + 4/19 - (5/20 * 4/19)

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (vi)
# the colour of the first ball is the same as the fifth ball AND the colour of the
#  second ball is the same as the fourth ball e.g. red, green, purple, green, red.
#  For each of these questions explain your answer i.e. show your reasoning.
red/box1 * green/box2 * purple/box3 * green/box4 * red/box5
# or
10/20 * 5/19 * 5/18 * 9/17 * 8/16

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q 1(b) [7 Marks]
# Suppose all the balls from the 5 boxes in Q1(a) were mixed together into a box that
# now contained 25 balls. If 5 balls are drawn without replacement from this box,
# calculate the probability that the second ball is red given the first ball is red. Explain
# your answer i.e. show your reasoning.

" p(second=R | first=R)             p(B n A)
    -----------------                ------
        p(first=R)                    p(A)              "

# reasoning
"the first ball is 5/25 because you have 5 red balls avalible from a box of 25"
"without replacement"
"that leaves 4 red balls left out of 24 remaining in the box given 4/24"
(4/24 * 5/25)/(5/25)
# or
.033/.2
(20/600)/(5/25)

#=============================================================================================
# QUESTION 2 [TOTAL MARKS: 25]
# For each of these questions explain your answers i.e. show your reasoning.

# Q 2(a) [12 Marks]
# The following table gives the mean hourly rate and percentage of staff working in
# various departments of an organisation. Each department of this organisation is
# identified by its floor number e.g. 1,2,3,4,5,6 or 7.

#                   Department | 1   2   3    4   5   6   7     |
#           Hourly rate (euro) | 21  11  107  31  42  46  19    |
#                    staff (%) | 10  11  10   15  18  19  17    | = 100

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (i) What are the mean and the variance of the hourly rate for all the
# departments? [8 marks]
"Mean = xbar"
(21 + 11 + 107 + 31 + 42 + 46 + 19) / 7 # = 39.57

"Weighted mean"
(21*.10) + (11*.11) + (107*.10) + (31*.15) + (42*.18) + (46*.19) + (19*.17) # = 38.19

x <- 38.19
"Variance"
(21-x)^2*.10 + (11-x)^2*.11 + (107-x)^2*.10 + (31-x)^2*.15 + (42-x)^2*.18 + (46-x)^2*.19 + (19-x)^2*.17
# 668.91

sqrt(669.91)
# sd = 25.88

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (ii) What is the probability that a person works in department 5,6 or 7 if their
# hourly rate is above euro29? [4 marks]

#                   Department | 1   2   3    4   5   6   7     |
#           Hourly rate (euro) | 21  11  107  31  42  46  19    |
#                    staff (%) | 10  11  10   15  18  19  17    | = 100
"
                                .10 .21 .31  .46 .64 .83  1
                                                 .18 .37
"

"
Sum of staff from departments 5, 6, 7 if > 29
-------------------------------------
Sum of staff all departments
"

(18 + 19) / (10 + 11 + 10 + 15 + 18 + 19 + 17)

(18+19)/100

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q 2(b) [13 Marks]
# For a certain population of people, you are told the mean salary is euro43,000 and its
# standard deviation is euro15,000. You can assume the salaries are normally distributed.
# mean 43000
# sd 15000

"X ~ N(43000, 15000^2)"


# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (i) What is the probability of a person having a salary less than euro43,000?
"
       43000 - 43000
  Z = --------------- = 0
          15000
43000 is 0 sd above the mean
"
" P(Z < 0) = .5" # NOTE: used table
"P(X < 43000) = .5"
pnorm(60000, 44000, 16000) # .5

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (ii) What is the probability of a person having a salary greater than euro58,000?
"1 - P(X > 58000)"
"
       58000 - 43000
  Z = --------------- = 1
          15000
58000 is 1 sd above the mean
"
" P(Z < 1) = .8413" # NOTE: used table
"P(X < 58000) = .8413"
"1 - P(X > 58000) = .1586"
1 - pnorm(58000, 43000, 15000) # .1586
#(58000-43000)/15000
# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (iii) What is the probability if you randomly selected a person, they will have a
# salary greater than euro58,000 or less than euro27,000?
"P(27000 < X < 43000)"
"
       27000 - 43000
  Z = --------------- = -1.06
          15000
27000 is 1.06 sd above the mean
"
" P(Z < -1.06) = .1445" # NOTE: used table
"P(X < 27000) = .1445"
pnorm(27000, 43000, 15000) # .1430

"1 - P(27000 < X < 43000)"
.15 + .84 # = .3017
# or
1 - (pnorm(60000, 44000, 16000) - pnorm(28000, 44000, 16000)) # = .3017
1 -(.84) + .15
#=============================================================================================

# QUESTION 3 [TOTAL MARKS: 25]
# At a particular garage 20% of the cars that arrive for repair have engine trouble.
# Upon arrival at the garage an engine diagnostic test is carried out on the car, but this
# engine diagnostic test is far from perfect. If the car has engine trouble the diagnostic
# test will turn out positive with a probability of 0.88. If the car does not have engine
# trouble, the diagnostic test will turn out positive with a probability of 0.02.
"Tree Diagram for Law of Total Probability"
# 20% cars have trouble
# if car has problem = test pos 0.88
# if car has no problem = test pos 0.02
"p(H) = .2"         # p(�H) = .8
"p(P | H) = .88"    # p(�P | H) = .12
"p(P | �H) = .02"   # p(�P | �H) = .98
"
  Work out all probs from info in Question

        �H  ^ H
          /   \
         ^     ^
       /  \   /  \
    �P/  P \ /�P  \P
�P|�H   P|�H �P|H  P|H
"
.89*.01+.05*.99

# For each of the questions below explain your answer i.e. show your reasoning.

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q 3(a) [5 Marks]
# What is the probability of a positive engine diagnostic test?
"p(P) = p(H n P) + p(�H n P)"
"p(H n P)  = p(P | H)  p(H)   .88*.20 = .176"
"p(�H n P) = p(P | �H) p(�H)  .02*.80 = .016"

"p(P) = .192" # p(�P) = .808

.88*.20 # = .176
.02*.80 # = .016
.176+.016 # 0.192 = p(p)
1 - (.192) # p(�P)

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q 3(b) [6 Marks]
# Using Bayes Theorem, calculate the probability that the car has engine trouble, if the
# engine diagnostic test is positive.
"p(�H | P) = (1 - p(H | P))" # ???
"p(H | P) = p(P | H)p(H) / p(P)"
"             .88 * .20  / .192"
"p(H | P) = .916" # p(�H | P) = .084
(.89*.01) / (.058) # = 0.916

1 - (.153) # p(�H | P)

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q 3(c) [6 Marks]
# Using Bayes Theorem, calculate the probability that the car has engine trouble if the
# engine diagnostic test is negative.
"p(�H | �P) = (1 - p(H | �P))" #???
"p(H | �P) = p(�P | H)p(H) / p(�P)"
"             .12 *   .20  / .808"
"p(H | �P) = .0297" # p(�H | �P) = .9703
(.11*.01)/ (.9486)

1 - (0.001) # p(�H | �P)

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q 3(d) [8 Marks]
# If 20 cars arrive to the garage on a particular day, what is the probability that:
"20% defect, 80% good"
# (i)
# 7 of the cars will have engine trouble

"Binomial Distribution"
# X = number of successes in n trials
# n = 20
# x = 7
"
 Formula
            | 20 |
 P(X = 7) = |    | (.2)^7 (1 - (.2))^20-7
            | 7  |

"
choose(20, 7) * (.2)^7 * (1 - (.2))^13 # = .0545
# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# (ii)
# The first car with engine trouble that arrives into the garage that day will be the 9th car.
"
                         x
 q  q  q  q  q  q  q  q  p  q
.8 .8 .8 .8 .8 .8 .8 .8 .2 .8
"
# p = .2
# q = .8
# x = 9
"Things that involve the FIRST of something happening use Geometric Distribution"
"X = Number of trials to the first success"
# PDF
"P(X = x) = q^x-1 p" # prob it will happen on the Xth trail
"P(X = 9) = P(1st 8 non-defective) * P(9th defective) = .8^8 * .2"
"P(X = 9)   =   P(q^9-1) * P(p)    =    P(.8^8) * P(.2)"
(.8^8)*.2
# or
(.8 * .8 * .8 * .8 * .8 * .8 * .8 * .8) * .2
# or
# 8 successes then 9th failure in R
dgeom(x = 8, prob = .2)

# -- -- -- Additional -- -- --
# CDF example:
"P(X <= x) = 1 - q^x"
"P(X <= 9) = 1 - (.8)^9" # within first 9
1 - ((.8^9))
1 - ((.8 * .8 * .8 * .8 * .8 * .8 * .8 * .8 * .8))
pgeom(8, .2)

#=============================================================================================

# QUESTION 4 [TOTAL MARKS: 25]
# The following system consists of a number of components in series and in parallel.
# The number in the box is the mean number of failures for that type of component in a
# period of 1 year. There are four (4) types of components in this system: C1, C2, C3
# and C4. Assume the probability of the failures follows a Poisson distribution.

"

                      3        1
  input ->   2   ->       ->       ->   2   -> Output
                      3        1

            C1       C2       C3       C4

Poisson distribution
"


# For each of the questions below explain your answer i.e. show your reasoning.
"
                       lamda^x
 P(X = x) = e^-lamda * ------- ,     x = 0, 1,..., infinity
                         x!

 e = 2.718281828...
 X = event of interest
 lamda = average
"

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q 4(a) [4 Marks]
# For each component, give the probability that it will still function after 1 year.
# C1 ----------------
"
                      2^0
 P(X = 0) = e^-2 * -------
                      0!

 e = 2.718281828...
 X = 0 failures in 1 year
 lamda = 2
"
2.718281828^-2 # 0 = no need for rest of formula # =0.1353
(3^0)/factorial(0)
dpois(0, 2) # pdf
# C2 ----------------
"
                      3^0             3^0
 P(X = 0) = e^-3 * ------- + e^-3 * --------
                      0!              0!

 e = 2.718281828...
 X = 0 failures in 1 year
 lamda = 3
"
(2.718281828^-3) + (2.718281828^-3) # = 0.0024
dpois(0, 3) + dpois(0, 3)# pdf
# C3 ----------------
"
                      1^0             1^0
 P(X = 0) = e^-1 * ------- + e^-1 * --------
                      0!              0!

 e = 2.718281828...
 X = 0 failures in 1 year
 lamda = 1
"
(2.718281828^-1) + (2.718281828^-1) # = 0.1353
dpois(0, 1) + dpois(0, 1)# pdf
# C4 ----------------
"
                      2^0
 P(X = 0) = e^-2 * -------
                      0!

 e = 2.718281828...
 X = 0 failures in 1 year
 lamda = 2
"
2.718281828^-2 # 0 = no need for rest of formula = 0.1353
dpois(0, 2) # pdf
"
 C1 = 0.1353
 C2 = 0.0995
 C3 = 0.7357
 C4 = 0.1353
"
# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q 4(b) [4 Marks]
# For each component, give the probability that it will fail 2 times in a year.
# C1 ----------------
"
                      2^2
 P(X = 2) = e^-2 * -------
                      2!

 e = 2.718281828...
 X = 2 failures in 1 year
 lamda = 2
"
(2.718281828^-5) * (5^20)/factorial(20) # = 0.2706706
dpois(20, 5) # pdf
# C2 ----------------
"
                      3^2             3^2
 P(X = 2) = e^-3 * ------- + e^-3 * --------
                      2!              2!

 e = 2.718281828...
 X = 2 failures in 1 year
 lamda = 3
"
2.718281828^-3
((2.718281828^-3) * (3^2)/(2*1)) + ((2.718281828^-3) * (3^2)/(2*1)) # = 0,4480
dpois(2, 3) + dpois(2, 3)# pdf
# C3 ----------------
"
                      1^2             1^2
 P(X = 2) = e^-1 * ------- + e^-1 * --------
                      2!              2!

 e = 2.718281828...
 X = 2 failures in 1 year
 lamda = 1
"
((2.718281828^-1) * (1^2)/(2*1)) + ((2.718281828^-1) * (1^2)/(2*1)) # = 0.3678
dpois(2, 1) + dpois(2, 1)# pdf
# C4 ----------------
"
                      2^2
 P(X = 2) = e^-2 * -------
                      2!

 e = 2.718281828...
 X = 0 failures in 1 year
 lamda = 2
"
(2.718281828^-2) * (2^2)/(2*1) # = 0.2706706
dpois(2, 2) # pdf
"
 C1 = 0.270
 C2 = 0.448
 C3 = 0.367
 C4 = 0.270
"
# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q 4(c) [7 Marks]
# What is the probability that the whole system will still function after a year?
"
 P(C1 | X=0) + P(C2 | X=0) + P(C3 | X=0) + P(C4 | X=0)
"
# Attempt
#0.1353 * 0.0024 * 0.1353 * 0.1353 (maybe safer option)
0.1353 + 0.0995 + 0.7357 + 0.1353/100


# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q 4(d) [10 Marks]
# If you were to add just one more component to the system, where would you add it
# to get the greatest increase in reliability? Explain your answer.
"
 For greatest increase in reliability a component added inbetween C2 and C3 would be
 most effective.
 This would split the paralle system making it,
 C1 = serial, C2 = parallel, C3 = serial, C4 = parallel, C5 = serial.
"
# [End of Question 4]

#=============================================================================================
# Q 5(a) [12.5 Marks]
# In a certain population, woman have heights which are normally distributed with a
# mean of 165 cm and a standard deviation of 7 cm. Men have heights which are
# normally distributed with a mean of 179 cm and a standard deviation of 7 cm. You
# can assume there are an equal number of men and women in the population.
"
 Normal Distribution
 Women = Mean 165cm, SD 7cm
   Men = Mean 179cm, SD 7cm

 Women X ~ N(165, 7^2)
 Men   X ~ N(179, 7^2)
"
7^2
# (i) Above which height is a person more likely to be male?
# Attempt
"Above the mean for women 165cm a person is more likely to be male"
curve (dnorm(x, 165, 49), from = 1, to = 300)
# (ii) If the standard deviation for the height of men was 3cm instead of 7cm,
# how this would change your answer to the previous question?

# -------------------------------------------------------------------------------------
# =====================================================================================

# Q 5(b) [12.5 Marks]
# In a certain long document, there is an average of 0.3 typographical errors per 100
# words of text.
# (i) What is the mean number of words between errors?
"The mean number of words .3/100 = 333"
1000/3 # 333
100/.3 # 333
100/5
# (ii) What is the probability of there being at least 100 words before the first error?
" mean 0.3 "
"                  0.3^0
p(X = 0) = e^-0.3 --------
                     0!
"
2.718281828^-0.3 # 0 = no need for rest of formula
dpois(0, 0.3) # pdf

#(iii) How many words would there be on a page, if the probability of 0 errors on
#a page was 20%?
# Attempt
"
 333 errors on average or 80% of words
 20% = no error = 5
"
333/5
66.6 + 333.3 # = 400 words

# -------------------------------------------------------------------------------------
# =====================================================================================

# Q 5(c) [12.5 Marks]
# Suppose you conduct a series of experiments, each of which consists of tossing a
# fair coin 6 times. Let X be the number of heads.

# (i) What are the probabilities for each value of X?
"Binomail Distribution"
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
# --------
# n = 6
# x = 0
"
 Formula
            | 6  |
 P(X = 0) = |    | (.5)^0 (1 - (.5))^6
            | 0  |

"
choose(4, 0) * (.5)^0 * (1 - (.5))^4 # = .015
# --------
# n = 6
# x = 1
"
 Formula
            | 6  |
 P(X = 1) = |    | (.5)^1 (1 - (.5))^5
            | 1  |

"
choose(4, 1) * (.5)^1 * (1 - (.5))^3 # = .093
# --------
# n = 6
# x = 2
"
 Formula
            | 6  |
 P(X = 2) = |    | (.5)^2 (1 - (.5))^4
            | 2  |

"
choose(4, 2) * (.5)^2 * (1 - (.5))^2 # = .23
# --------
# n = 6
# x = 3
"
 Formula
            | 6  |
 P(X = 3) = |    | (.5)^3 (1 - (.5))^3
            | 3  |

"
choose(4, 3) * (.5)^3 * (1 - (.5))^1 # = .31
# --------
# n = 6
# x = 4
"
 Formula
            | 6  |
 P(X = 4) = |    | (.5)^4 (1 - (.5))^2
            | 4  |

"
choose(4, 4) * (.5)^4 * (1 - (.5))^0 # = .23
# --------
# n = 6
# x = 5
"
 Formula
            | 6  |
 P(X = 5) = |    | (.5)^5 (1 - (.5))^1
            | 5  |

"
choose(6, 5) * (.5)^5 * (1 - (.5))^1 # = .093
# --------
# n = 6
# x = 6
"
 Formula
            | 6  |
 P(X = 6) = |    | (.5)^6 (1 - (.5))^0
            | 6  |

"
choose(6, 6) * (.5)^6 * (1 - (.5))^0 # = .015

# =========================================================
# (ii)  What is P(the first toss is tails | X=3)?
"
 P(first=tails | X=3)/ P(X=3)

 P(3 Hs in 5 tosses) = 5C3 * 0.5^3 * 0.5^2

"
# P(X = 3) = 0.31
choose(5, 3) * 0.5^3 * 0.5^2 * 0.5 # = 0.156

# P(0.156) / P(0.31)
0.156/0.31 # 0.5

# ------------ P(X=6) (Additional Question)
"
 P(first=tails | X=6)/ P(X=6)

 P(5 Hs in 6 tosses) = 6C5 * 0.5^4 ^ 0.5^3 * 0.5^2 * 0.5

"
# P(X = 6) = 0.015
choose(6, 5) * 0.5^4 * 0.5^3 * 0.5^2 * 0.5 # = 0.005

# P(0.005) / P(0.015)
0.005/0.015 # 0.33
# =========================================================
# (iii) What is the P(X > 3)?
"
 P(X > 3)
 P(X=4) + P(X=5) + P(X=6)
"
# NOTE: dbinom if we wanted exactly 3, pbinom for less than.
# P(X<= 3)
pbinom(3, 6, .5)
.0625+.25+.37+.25
# P(X > 3)
1 - pbinom(3, 6, .5)
.015 + .093 + .23
# ------------ P(X < 5) (Additional Question)
"
 P(X < 5) = 1 - P(X = 5) + P(X = 6)
 or
 P(X=0) + P(X=2) + P(X=3) + P(X=4)
"
# NOTE: dbinom if we wanted exactly 5, pbinom for less than.
# P(X<= 5)
pbinom(4, 6, .5)

# P(X > 5)
1 - pbinom(4, 6, .5)
.015 + .093 + .23 + .31 + .23
# 0     1      2    3      4
# =========================================================
# (iv) What is the P(X=3 | given the first toss is heads?)
"
 P(X=3 | first=tails) * P(X=3) / P(first=tails)

 first tails = 2^5/2^6 = .5

 P(.5) * P(0.31) / P(.5)
"
.5*.31/.5 # = .31
# ----------- P(X=2 | given the first toss is heads?) (Additional Question)
"
 P(X=2 | first=tails) * P(X=2) / P(first=tails)

 first tails = 2^5/2^6 = .5

 P(.5) * P(0.23) / P(.5)
"
.5*.23/.5 # = .23

# =========================================================
# What is P(the first experiment where X=5 is the eighth)?
"Geometric Distribution"
"
                      x
 q  q  q  q  q  q  q  p  q
.5 .5 .5 .5 .5 .5 .5 .5
"
# p = .5
# q = .5
# x = 5

# PDF
"P(X = x) = q^x-1 p" # prob it will happen on the Xth trail
"P(X = 5) = P(1st 4 non-defective) * P(5th defective) = .5^7 * .5"
"P(X = 5)   =   P(q^8-1) * P(p)    =    P(.5^7) * P(.5)"
(.5^7)*.5
# or
(.5 * .5 * .5 * .5 * .5 * .5 * .5) * .5
# or
# 7 successes then 8th failure in R
dgeom(x = 7, prob = .5) # = .0039

# -- -- -- Additional -- -- --
# CDF example:
"P(X <= x) = 1 - q^x"
"P(X <= 9) = 1 - (.8)^9" # within first 9
1 - ((.8^9))
1 - ((.8 * .8 * .8 * .8 * .8 * .8 * .8 * .8 * .8))
pgeom(8, .2)

# =========================================================
# What are the mean and variance of X?
"
 mean = np = 6 tosses * H or T
 var = np(1-p) or npq
"
# Mean = E(X)
sum(P(X) * X)
sum(.5 * 6)
6 * .5 # 3

# Variance = V(X)
6 * .5 * (1- (.5)) # 1.5


# =========================================================
# Hypergeometric distribution

choose(13, 2) * choose(39, 4) / choose(52, 6)
