# Use R to simulate that the probability of getting an even number if a fair die is rolled
# repeatedly (600 times).

dice <- sample(c(1, 2, 3, 4, 5, 6), 600, replace=T)
dice
prob <- table(dice)/600
prob[2]+prob[4]+prob[6]
