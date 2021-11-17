# What is the probability of living in an area with the mean wealth > 100 if you live in Toptown?

# Region Ashire Bshire Cshire WestTT EastTT SouthTT NorthTT
# wealth 80     110    110    70     120    90      110
# pop%   9      19     17     8      19     13      15

twealth = c(70, 120, 90, 110)
tprob = c(.08, .19, .13, .15)

tprob <- tprob/sum(tprob)
sum(tprob)

# P(M | T)  M = event of mean > 100, T = event of living in TopTown
p_m_given_t <- sum(tprob[twealth>100])
p_m_given_t

