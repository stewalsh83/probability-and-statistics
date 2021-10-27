# 3. A box with 15 IC chips contains 5 defective chips. If a sample of three chips is drawn
# at random (without replacement), what is the probability that all three are defective?

# 15 IC chips
# 5 D
# 10 G
# 3 Random
# Prob D D D
n = 5
k = 3

prod(n, k)/prod(n, 15)