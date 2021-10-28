# Replicate a given dice (6 times):
dice <- rep(1/6, times = 6)
dice

# probability of getting < 3
sum(dice[1:2])

# probability of getting < 5
sum(dice[1:4])

# probability of getting > 2
sum(dice[3:6])

# probability of getting > 2 and < 5
sum(dice[3:5])
