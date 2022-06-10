# Normal Distribution

"
PDF Probability Density Function = bell curve
CDF
Normal Distribution: X ~ N(mean, Variance)
 -00 < X < 00

E(X) = mu = mean
V(X) = sigma^2 = variance
"
# dnorm = sd and not variance
curve(dnorm(x, 43000, 15000), from = 1, to = 86000)

# ---------------------------------------
# mean = 45
# sd = 4
# sd^2 = 16 = variance
# X ~ N(45, 16)

# Question
# i)   < 45
# ii)  > 45
# iii) between 40 and 50
# iV)  > 37

# Answer
# i)
"X ~ N(45, 16)"
" This X belongs to a normal distribution with a mean of 45 and a variance of 16"
"P(X<45)"
curve(pnorm(x, 45, 4), from = 30, to = 60)
pnorm(45, 45, 4) # .5

# ii)
"CDF because eveything under the curve adds up to 1, I can minus everything after the curve"
"P(X>45)"
1 - pnorm(45, 45, 4) # .5

# iii)
"P(40 <= X < 50)"
pnorm(50,45, 4) -pnorm(40, 45, 4) # .788

# iv)
"P(X > 37)"
1 - pnorm(37, 45, 4)

# ---------------------------------------
# sd = 16
# sd^2 = var 256
#      mean var
"X ~ N(100, 256)"

# p(X < 120 | X > 110)
"
  P(X < 120 n X > 110)
  --------------------
       P(X > 110)

  Same:

  P(110 < X < 120)
  --------------------
       P(X > 110)

"
# P(110 < X < 120)
pnorm(120, 100, 16) - pnorm(110, 100, 16) # = 0.1603358

# P(X > 110)
1 - pnorm(110, 100, 16) # = 0.2659855

# p(X < 120 | X > 110)
0.1603358/0.2659855 # = 0.602799

#-------------------------------------------------

# Quantiles
# Values
# Upper 30%
"P(X > k) = .3"
# or equivalently
"P(X <= k) = .7"
qnorm(.70, 500, 100) # k = 552.44

qnorm(.30, 500, 100)# k = 447.5599
# the middle 40% is between 447 and 552

# --------------------------------------------------
# Standard Normal Distribution
"Answer Normal Distribution on paper using tables"
# Z scoring

# X ~ N(mean, sd^2)

"
       X - mean
  Z = ---------- ~ N(0, 1)
          sd

"
# 3 bits of info
# 1: normally distributed
# 2: mean 65
# 3: sd 15
"P(X < 80)?"

"X ~ N(65, 15^2)"
# use formula
"
       80 - 65
  Z = ---------- = 1
          15
80% is 1 sd above the mean
"
# whats the probability the Z score is less than 1
" P(Z < 1) = .8413"
"P(X < 80) = .8413"
pnorm(80, 65, 15)

# --------------------------------------------------
# z score example
"P(X >= 80)?"

"X ~ N(65, 15^2)"

"P(X >= 80) = 1 - P(X < 80) = 0.1586553"

# --------------------------------------------------
# z score example
"P(X < 44)?"

"X ~ N(65, 15^2)"
# use formula
"
       44 - 65
  Z = ---------- = -1.4
          15
44% is 1.4 sd below the mean
"
"P(Z < -1.4) = P(Z >= 1.4) = 1 - P(Z < -1.4)" # .0808
# 1 - (.9192) = .0808
pnorm(44, 65, 15)

#=====================================================================