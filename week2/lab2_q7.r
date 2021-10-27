x <- sample(c("H", "T"), 32, replace=T)
x
table(x)


# 5 heads in a row (HHHHH) same for any sequence (HHTTT)
1/2 * 1/2 * 1/2 * 1/2 * 1/2
# OR
1 / 2^5 # = sample space 32 tosses
# OR 1 in 32

# HH - .25 or 1 in 4
1 / 2^2

2^18 # = 1 in 262144 OR 0.000003814697265625 chance
1/262144
