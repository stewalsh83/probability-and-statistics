# Q1) A computer system uses passwords that are five characters, and each character is one of
# of the 26 letters (a-z) or 10 integers (0-9). The first character has to be a letter. You may
# assume that passwords are not case sensitive.

# if a password was selected at random, what is the probability the password would read the same backwards as forwards?

(26*36*36)/(26*36*36*36*36)

# OR

# 1st     2nd     middle  2ndL   last

((26/26)*(36/36)*(36/36)*(1/36)*(1/36))
