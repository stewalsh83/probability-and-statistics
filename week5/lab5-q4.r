# "Law of diminishing returns"
# a parallel system with 30 components where
# each component has a reliability of 0.50

# parallel = 1-(1-p)^k

#a <- 1 - .5^30
#b <- .5^30

par(mfrow=c(2,1))

k <- 1:30  # simulating 1 to 30 additional components
p1 <- .5   # reliability of single component
diffs <- 0 # differences in probabilities for increasing components
probs <- 1-(1-p1)^k # calculating probabilities of each additional component (for k from 1 to 30)

for(i in 2:30)
  diffs[i-1] <- probs[i] - probs[i-1]

plot(diffs, type='o', main='Law of diminishing returns', xlab='No of Additional (Parallel) Components', ylab='Gain in reliability')

par(mfrow=c(1,1))
