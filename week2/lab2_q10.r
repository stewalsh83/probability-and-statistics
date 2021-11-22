# Amy and Jane are gambling against one another. A fair coin is tossed repeatedly.
# Each time a head comes up, Amy wins two euros from Jane, and each a tail comes
# up, Amy loses 2 euros to Jane. Use R to simulate this game 100 times.
# Estimate:
# a) the number of times that Amy is ahead in these 100-coin tosses
# b) how much Amy won or lost

toss <- sample(c(2, -2), 100, replace=T)
run_total <- 0
run_total[1] <- toss[1]
run_total
for(i in 2:100)
  run_total[i] = run_total[i-1] + toss[i]
plot(run_total)

# a)
run_total[run_total > 0]
length(run_total[run_total > 0])/100

# b)
sum(toss)
# OR
run_total[100]
