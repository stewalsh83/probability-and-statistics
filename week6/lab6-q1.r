# What are the mean and variance of the wealth for the whole country?

# Region Ashire Bshire Cshire WestTT EastTT SouthTT NorthTT
# wealth 80     110    110    70     120    90      110
# pop%   9      19     17     8      19     13      15

# mean
mwealth <- (80*.09)+(110*.19)+(110*.17)+(70*.08)+(120*.19)+(90*.13)+(110*.15)
mwealth

# variance
vwealth <- (80-103.4)^2*.09+(110-103.4)^2*.19+(110-103.4)^2*.17+(70-103.4)^2*.08+(120-103.4)^2*.19+(90-103.4)^2*.13+(110-103.4)^2*.15
vwealth

# - - - - - - - - - - - - - - - - - - - - - - - - - - - -

wealth <- c(80, 110, 110, 70, 120, 90, 110)
prob <- c(0.09, 0.19, 0.17, 0.08, 0.19, 0.13, 0.15)

# make sure it adds up to 1
sum(prob)

# mean
mwealth <- sum(wealth * prob)
mwealth

# variance
vwealth <- sum((wealth - mwealth)^2*prob)
vwealth
