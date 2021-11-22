# In a party of five students, compute the probability that at least two have the same
# birthday (month/day), assuming a 365-day year.

k <- 5
1 - prod(365:(365-k+1)) / (365^k)
