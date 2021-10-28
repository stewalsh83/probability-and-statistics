# Imagine you have been given the following code for a simulation to
# answer these questions, however, some parts of the code have been
# corrupted (the corrupted parts are shown with $$$!!!!$$$).

pos <- 0
virus <- 0
for(i in c(1:10000))
{
  if(runif(1) < 0.25)
  {
    virus[i] <- 1
    
    if(runif(1) < 0.99) 
      pos[i] <- 1
    
    else pos[i] <- 0
  }
  else
  {
    virus[i] <- 0 
    
    if(runif(1) < 0.12) 
      pos[i] <- 1 
    
    else pos[i] <- 0
  }
}
# the probability of getting a positive test is
sum(pos)/10000
# the probability of having the virus given a positive test is
sum(pos & virus)/sum(pos)
# the probability of having the virus given a negative test is
sum(!pos & virus)/sum(!pos)
# the probability of not having the virus given a negative test
sum(!pos & !virus)/sum(!pos)

