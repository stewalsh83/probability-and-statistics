# What is the probability that you live in Toptown given that you live in an area with mean wealth > 100?

# Region Ashire Bshire Cshire WestTT EastTT SouthTT NorthTT
# wealth 80     110    110    70     120    90      110
# pop%   9      19     17     8      19     13      15

wealth <- c(80, 110, 110, 70, 120, 90, 110)
prob <- c(0.09, 0.19, 0.17, 0.08, 0.19, 0.13, 0.15)

# Q3
p_m_given_t <- sum(tprob[twealth>100])

# P(T | M)  T = event of living in TopTown, M = event of mean > 100

# P(M)
p_m <- sum(prob[wealth>100])
p_m

# P(T)
p_t <- (0.08 + 0.19 + 0.13 + 0.15)
p_t

# calculate P(T | M) via Baye's rule:
# P(T|M) = ( P(M|T) P(T) ) / P(M)
p_t_given_m <- (p_m_given_t * p_t) / p_m
p_t_given_m

