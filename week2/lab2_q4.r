# A batch of 50 semiconductors contains 10 that are defective.
# Two are selected at random without replacement.
# a) What is the probability that the first one selected is defective?
# b) What is the probability that the second one selected is defective?
# c) What is the probability that both are defective?
# d) How would the probability change in (b) if the chips selected were replaced
#    before the next selection?

# 40 G, 10 D, 50 Total

# a)
# D G + D D
(10/50) * (40/49) + (10/50) * (9/49)

# b)
# G D + D D
(40/50) * (10/49) + (10/50) * (9/49)

# c)
(10/50) * (9/49) # D D

# d)
10/50
