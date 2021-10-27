# if a password was selected at random, what is the probability the password would read the same backwards as forwards?
# Solve in R

letters = c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z')
# print(letters)
letters_and_numbers = c(letters, 0:9)
# print(letters_and_numbers)

cnt <- 0            # keep count of palindromic passwords
n_iters <- 100000   # sample space / times around the loop

for(i in 1:n_iters)
{              # sample(x, size) random sample of elements
  password_p1 <- sample(letters, 1, replace=T)             # password_p1: first letter is from a to z,index 0
  password_p2 <- sample(letters_and_numbers, 4, replace=T) # password_p2: last 4 letters are from a to z and/or 0 to 9, index 0,1,2,3 
  
  # combine part 1 (first letter) and part 2 (the other 4 letters/numbers)
  password <- c(password_p1, password_p2) # index 0 + index 0 1 2 3
  
  if(identical(password, rev(password))) # identical() ==, rev()
  {
    cnt <- cnt+1
  }
}

sprintf("%.20f", cnt/n_iters)

#print(password_p1)   # first letter
#print(password_p2)   # other 4 letters
#print(password)      # combined
#print(rev(password)) # reverse
#print(cnt)           # count of palindromic passwords
