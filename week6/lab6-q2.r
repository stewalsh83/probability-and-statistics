# What are the mean and variance of the wealth for those who live in Toptown?

# Region Ashire Bshire Cshire WestTT EastTT SouthTT NorthTT
# wealth 80     110    110    70     120    90      110
# pop%   9      19     17     8      19     13      15

ttwealth = c(70, 120, 90, 110)
ttprob = c(.08, .19, .13, .15)

# Make sure probability adds up to 1 and get new probs
ttprob <- ttprob/sum(ttprob)
ttprob

# ans <- (70*.08)+(120*.19)+(90*.13)+(110*.15)
# ans <- (70*.14)+(120*.35)+(90*.24)+(110*.27)
# ans

# Top Town mean
mttwealth <- sum(ttwealth * ttprob)
mttwealth

# Top Town Variance
vttwealth <- sum((ttwealth - mttwealth)^2*ttprob)
vttwealth
