# The probability that two students in a class have the same birthday is at least 75%.
# What is the minimum size of the class?
"Use strategy in Q5 and change K until you get a probability above .75"
k <- 32
1 - prod(365:(365-k+1)) / (365^k)
