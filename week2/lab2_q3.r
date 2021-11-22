# A box with 15 IC chips contains 5 defective chips. If a sample of three chips is drawn
# at random (without replacement), what is the probability that all three are
# defective?

chips <- 15
k <- 3
n <- 5
choose(n , k)/choose(chips, k)
choose(5 , 3)/choose(15, 3)
# OR
(5/15) * (4/14) * (3/13)
