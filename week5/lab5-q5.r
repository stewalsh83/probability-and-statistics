# Calculate the reliability of 12 subsystems operating in parallel with 0.92 of probability of failure.

.92^12

k <- 12
p1 <- .92

prob <- p1^k
1 - prob


# Rel = P(at least one subsystem works)
# or
# Rel = 1- P(both subsystems fail)

rel = 1 - (1 - .08)^12
rel
