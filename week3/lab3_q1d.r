# Q1) A computer system uses passwords that are five characters, and each character is one of
# of the 26 letters (a-z) or 10 integers (0-9). The first character has to be a letter. You may
# assume that passwords are not case sensitive.

# (d) the proportion of possible passwords begin with a consonant OR end with an even number
# (OR both)
# hint: use the addition law of probability: P(A U B) = P(A) + P(B) - P(A ??? B)

# P(A) = 21/26
# P(B) = 5/36
# P(A n B) = 21/26 * 5/36

# P(A U B) = 21/26 + 5/36 - 21/26 * 5/36
# Ctrl + Enter to run (Press on each line of code)
((21/26) + (5/36)) - ((21/26) * (5/36)) # = 0.8344017

# OR

# a = proportion of password that start with a consonant AND end with a (letter OR odd number)
# b = proportion of passwords that start with a consonant AND end with an even number
# c = proportion of password that start with a vowel and end with a (letter OR odd number)
# d = proportion of password that start with a vowel and end with an even number

                                      # All add up to 1
a = (21*36*36*36*31)/(26*36*36*36*36) # 0.6955128
b = (21*36*36*36*5)/(26*36*36*36*36)  # 0.1121795
c = (5*36*36*36*31)/(26*36*36*36*36)  # 0.1655983 Not needed for this question
d = (5*36*36*36*5)/(26*36*36*36*36)   # 0.0267094

# note: (26*36*36*36*36) = (26)(36**4) = number of possible passwords that start with a letter
# and are followed by 4 letters (26) or number (10).
# We want A+B+D = 0.8344017

# Ctrl + Enter to run
a+b+d # = 0.8344017
