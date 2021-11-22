# A series of 20 jobs arrive at a computing center with 50 processors. Assume that
# each of the jobs is equally likely to go through any one of the processors.
# Find the probability that a processor is used at least twice.

# P(¬E) = 1 - 50 P 20 / 50 ^ 20

k <- 20
1 - prod(50:(50-k+1))/50^k

sample(1:50, 20, replace=T)
length(unique(sample(1:50, 20, replace=T)))

num <- 0
for(i in 1:1000)
{
  num[i] <- length(unique(sample(1:50, 20, replace=T)))
}
hist(num)

num[num==20]
length(num[num==20])/1000
1 - (length(num[num==20])/1000)
