# 2. A sample of size 10 is chosen at random from a class of 100 consisting of 60 females
# and 40 males. Obtain the probability of getting 10 females.

# class = 100
# females = 60
# males = 40
# P(E) = 10 females at random
# n C k
# 60 Choose 10
# 100 Choose 10 (all the different ways a student can be selected)

# Ctrl + Enter to run (Press on each line of code)
class <- 100
k <- 10
n <- 60
choose(n , k)/choose(class, k)
choose(60, 10) / choose(100, 10)
# OR
prod(60:51)/prod(100:91)
prod(n:(n-k+1))
