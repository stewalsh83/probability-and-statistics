# 1. If password can consist of six letters, find the probability that a randomly chosen
# password will not have any repeated letters.

letters = c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z')

# Ctrl + Enter to run (Press on each line of code)
26*25*24*23*22*21 # = 165765600

26*25*24*23*22*21 / 26^6
# OR
prod(26:21) / (26^6)
