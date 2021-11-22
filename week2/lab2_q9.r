# An experiment consists of tossing two fair coins. Use R to simulate this experiment
# 100 times and obtain the relative frequency of each possible outcome.

toss <- sample(c("HH", "TT", "HT", "TH"), 100, replace=T)
toss
table(toss)
