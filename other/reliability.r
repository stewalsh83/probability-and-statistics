# Part A

reliability_probabilities <- c(.97, .68, .89, .93)
num_of_components_in_parallel <- c(1, 5, 3, 2)

calc_system_reliability <- function(num_of_components_in_parallel, reliability_probabilities)
{
  calc <- 1
  for(i in 1:length(num_of_components_in_parallel))
    calc = ((1-((1-reliability_probabilities[i])^num_of_components_in_parallel[i]))*calc)

  system_reliabilty_probability <- calc
  return(system_reliabilty_probability)
}
sprintf("Probability of system working = %f", calc_system_reliability(num_of_components_in_parallel, reliability_probabilities))

# -- part A calculations -- -- -- -- -- -- --
c1 <- 0.97
c2 <- 1 - (1 - 0.68)^5
c3 <- 1 - (1 - 0.89)^3
c4 <- 1 - (1 - 0.93)^2

c1 # 0.97
c2 # 0.996
c3 # 0.998
c4 # 0.995

rel = c1 * c2 * c3 * c4
rel # 0.9607277
# OR
.97 * (1 - .32^5) * (1 - .11^3) * (1 - .07^2)

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

# Part B
# I feel I have taken the wrong approach and didn't fully understand the question.
# A previous attempt is below but I don't think it's correct either.

probs <- c(.97, .68, .89, .93)
n_comps <- c(1, 5, 3, 2)

simulate_system_reliability <- function(num_iterations, num_of_components_in_parallel, reliability_probabilities)
{
  rel <- NULL
  system_reliabilty_probability <- c()
  for (i in c(1:num_iterations))
  {
    for(j in num_of_components_in_parallel[i])
    {
      # all_comp_probs
      # 0.97 0.68 0.68 0.68 0.68 0.68 0.89 0.89 0.89 0.93 0.93
      all_comp_probs <- rep(probs, n_comps)
    }
    for(k in 1:length(all_comp_probs))
    {
      # setting random number against each element in all_comp_probs
      if(runif(1) <= all_comp_probs[k])
        rel[i] <- 1
      else rel[i] <- 0
      x <- c()
      x <- rel[i]
      # Placing new values into vector 11 components per iteration
      system_reliabilty_probability <- as.vector(c(system_reliabilty_probability,(x)))
    }
  }
  # Ajusting decimal point and calculating
  num <- num_iterations*10
  return(sum(system_reliabilty_probability)/num)
}
sprintf("System Simulation = %f", simulate_system_reliability(100, n_comps, probs))


# -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Part B First approach (Not Submitted)
probs <- c(.97, .68, .89, .93)
n_comps <- c(1, 5, 3, 2)

simulate_system_reliability <- function(num_iterations, num_of_components_in_parallel, reliability_probabilities)
{
  rel <- 0
  for (i in c(1:num_iterations))
  {
    for(j in c(1:num_iterations))
    {
      for(k in 1:length(num_of_components_in_parallel))
      {
        #print(rel)
        if(runif(1) <= reliability_probabilities[k])
          rel[j] <- 1
        else rel[j] <- 0
      }
    }
    #print(rel)
    #print(sum(rel)/num_iterations)
  }
  print(sum(rel)/num_iterations)
}
simulate_system_reliability(100, n_comps, probs)

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Part C

probs <- c(.97, .68, .89, .93)
n_comps <- c(1, 5, 3, 2)

simulate_system_reliability <- function(num_iterations, num_of_components_in_parallel, reliability_probabilities)
{
  rel <- NULL
  system_reliabilty_probability <- c()
  points <- c()
  iteration_intervals <- seq(1, num_iterations, 50)

  for(i in iteration_intervals)
  {
    for(j in num_of_components_in_parallel[i])
    {
      all_comp_probs <- rep(probs, n_comps)
    }
    for(k in 1:length(all_comp_probs))
    {
      if(runif(1) > all_comp_probs[k])
        rel[i] <- 1
      else rel[i] <- 0
      x <- c()
      x <- rel[i]
      system_reliabilty_probability <- as.vector(c(system_reliabilty_probability,(x)))
      num <- num_iterations*10
    }
    calc <- (1-sum(system_reliabilty_probability)/num)
    points <- as.vector(c(points,calc))

    plot(iteration_intervals, points[1:length(iteration_intervals)],
         xlab="Number of iterations in simulation", ylab="System Reliability")
  }
  abline(h=calc, col='red')
}
simulate_system_reliability(10000, n_comps, probs)


# -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Part C First approach (Not Submitted)
probs <- c(.97, .68, .89, .93)
n_comps <- c(1, 5, 3, 2)

simulate_system_reliability <- function(num_iterations, num_of_components_in_parallel, reliability_probabilities)
{
  rel <- 0
  for (i in c(1:num_iterations))
  {
    for(j in c(1:num_iterations))
    {
      for(k in 1:length(num_of_components_in_parallel))
      {
        if(runif(1) < reliability_probabilities[k])
          rel[j] <- 1
        else rel[j] <- 0
      }
    }
    plot(1 - sum(rel)/num_iterations)
    #print(1 - sum(rel)/num_iterations)
  }
}

simulate_system_reliability(1:100, n_comps, probs)
# ----------------------------------------------------------------------
