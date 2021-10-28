# What are the mean and variance of the wealth for the whole country?

#
# wealth 80 110 110 70 120 90 110
# pop%   9  19  17  8  19  13 15

wealth <- c(80, 110, 110, 70, 120, 90, 110)
prob <- c(0.09, 0.19, 0.17, 0.08, 0.19, 0.13, 0.15)

sum(prob)

mwealth <- sum(wealth * prob)
mwealth
