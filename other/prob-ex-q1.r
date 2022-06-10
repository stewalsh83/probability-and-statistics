
# the first ball is yellow
1/5
red/box
#box1 <- c("red", "blue", "yellow", "purple", "green")
red <- 1
yellow <- 1
purple <- 1
green <- 1
blue <- 1
box <- red + yellow + purple + green + blue
# the first ball is yellow
1/5
red/box
red <- 1
yellow <- 1
purple <- 1
green <- 1
blue <- 1
box1 <- red + yellow + purple + green + blue
box2 <- red + yellow + purple + green + blue
box3 <- red + yellow + purple + green + blue
box4 <- red + yellow + purple + green + blue
box5 <- red + yellow + purple + green + blue
# the first ball is yellow
1/5
red/box1
# the second ball is yellow given the first ball was yellow
# p(second=yellow | yellow)
yellow/box1
yellow/box2
# all the balls are the same colour
yellow/box1 + yellow/box2 + yellow/box3 + yellow/box4 + yellow/box5
# all the balls are the same colour
yellow/box1 + yellow/box2 + yellow/box3 + yellow/box4 + yellow/box5*5
# all the balls are the same colour
yellow/box1 * yellow/box2 * yellow/box3 * yellow/box4 * yellow/box5
x + x + x + x + x
# all the balls are the same colour
x <- yellow/box1 * yellow/box2 * yellow/box3 * yellow/box4 * yellow/box5
x + x + x + x + x
# all the balls are the same colour
y <- yellow/box1 * yellow/box2 * yellow/box3 * yellow/box4 * yellow/box5
r <- red/box1 * red/box2 * red/box3 * red/box4 * red/box5
b <- blue/box1 * blue/box2 * blue/box3 * blue/box4 * blue/box5
g <- green/box1 * green/box2 * green/box3 * green/box4 * green/box5
p <- purple/box1 * purple/box2 * purple/box3 * purple/box4 * purple/box5
y + r + b + g + p
# there are no balls of the same colour
1 - y + r + b + g + p
# there are no balls of the same colour
1 - (y + r + b + g + p)
# either the first ball or last ball or both are red
red/box1 + red/box5
red/box1 + red/box5 - red/box1 * red/box5
(red/box1 + red/box5) - (red/box1 * red/box5)
(red/box1 + red/box5) - .4
(red/box1 + red/box5) -
(red/box1 * red/box5)
(red/box1 + red/box5) -
(red/box1 * red/box5)
(red/box1 + red/box5) - .36
# either the first ball or last ball or both are red
# F     L
1/5 * 1/5
1/36
1/25
1/5+1/5
1/5+1/5 - fl
fl <- 1/25
1/5+1/5 - fl
(red/box1 + red/box5) - (red/box1 * red/box5)
(red/box1 + red/box5) - .36
# either the first ball or last ball or both are red
# F     L
1/5 * 1/5
fl <- 1/25
1/5 + 1/5 - fl
# the colour of the first ball is the same as the fifth ball AND the colour of the
# second ball is the same as the fourth ball e.g. red, green, purple, green,
# red.
red
# the colour of the first ball is the same as the fifth ball AND the colour of the
# second ball is the same as the fourth ball e.g. red, green, purple, green,
# red.
red/box1
# the colour of the first ball is the same as the fifth ball AND the colour of the
# second ball is the same as the fourth ball e.g. red, green, purple, green,
# red.
red/box1 * green/box2 * purple/box3 * green/box4 * red/box5
1/5 * 1/5 * 1/5 * 1/5 * 1/5
1/5 * 1/5 * 1/5 * 1/4 * 1/4
1/5 * 1/5 * 1/5 * 1/5 * 1/5
15/30 * 10/29 * 5/28 * 14/27 * 9/26
5 * (1/5 * 1/5 * 1/5 * 1/5 * 1/5)
# all the balls are the same colour
y <- yellow/box1 * yellow/box2 * yellow/box3 * yellow/box4 * yellow/box5
r <- red/box1 * red/box2 * red/box3 * red/box4 * red/box5
b <- blue/box1 * blue/box2 * blue/box3 * blue/box4 * blue/box5
g <- green/box1 * green/box2 * green/box3 * green/box4 * green/box5
p <- purple/box1 * purple/box2 * purple/box3 * purple/box4 * purple/box5
y + r + b + g + p
5 * (1/5 * 1/5 * 1/5 * 1/5 * 1/5)
(1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5)
n <- 5
k <- 1
S <- 25
choose(n , k)/choose(S, k)
(4/24 * 5/25)/5/25
20/600
(20/600)/(5/25)
(4/24 * 5/25)/(5/25)
20/600
.033/.2
# the first ball is red
1/6
# the second ball is red given the first ball was red
1/6 * 1/6
# all the balls are the same colour
(1/6 * 1/6 * 1/6 * 1/6 * 1/6 * 1/6) * 6
# all the balls are the same colour
1-(1/6 * 1/6 * 1/6 * 1/6 * 1/6 * 1/6) * 6
# all the balls are the same colour
(1/6 * 1/6 * 1/6 * 1/6 * 1/6 * 1/6) * 4
# all the balls are the same colour
(1/6 * 1/6 * 1/6 * 1/6 * 1/6 * 1/6) + (1/6 * 1/6 * 1/6 * 1/6 * 1/6 * 1/6) + (1/6 * 1/6 * 1/6 * 1/6 * 1/6 * 1/6) + (1/6 * 1/6 * 1/6 * 1/6 * 1/6 * 1/6)
# all the balls are the same colour
(1/6 * 1/6 * 1/6 * 1/6 * 1/6 * 1/6)
# all the balls are the same colour
1/6 * 1/6 * 1/6 * 1/6 * 1/6 * 1/6
# all the balls are the same colour
4 * (1/6 * 1/6 * 1/6 * 1/6 * 1/6 * 1/6)
# all the balls are the same colour
(1/6) * (1/6) * (1/6) * (1/6) * (1/6) * (1/6)
# all the balls are the same colour
(1/6)^4 * (1/6)^4 * (1/6)^4 * (1/6)^4 * (1/6)^4 * (1/6)^4
# all the balls are the same colour
(1/6)^4 + (1/6)^4 + (1/6)^4 + (1/6)^4 + (1/6)^4 + (1/6)^4
6(1/6)^4
6*(1/6)^4
5*(1/5)^5
5 * (1/5 * 1/5 * 1/5 * 1/5 * 1/5)
(1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5) + (1/5 * 1/5 * 1/5 * 1/5 * 1/5)
# or
(1/5)^5 + (1/5)^5 + (1/5)^5 + (1/5)^5 + (1/5)^5 + (1/5)^5
# or
(1/5)^5 + (1/5)^5 + (1/5)^5 + (1/5)^5 + (1/5)^5
# there are no balls of the same colour
1 - (y + r + b + g + p)
1 - (5 * (1/5 * 1/5 * 1/5 * 1/5 * 1/5))
# all the balls are the same colour
(1/6)^4 + (1/6)^4 + (1/6)^4 + (1/6)^4 + (1/6)^4 + (1/6)^4
6*(1/6)^4
# there are no balls of the same colour
1 - ((1/6)^4 + (1/6)^4 + (1/6)^4 + (1/6)^4 + (1/6)^4 + (1/6)^4)
# or
1 - 6*(1/6)^4
# (v)
# either the first ball or last ball or both are green
1/6 + 1/6 - 1/6 * 1/6
1/6*1/6
1/36
13/36
# (v)
# either the first ball or last ball or both are green
1/6 + 1/6 - 1/6 * 1/6
# (vi)
# the colour of the first ball is the same as the fourth ball AND the colour of
# the second ball is the same as the third ball e.g. red, green, green, red.
1/6 * 1/6 * 1/6 * 1/6
(3/22*4/24)/(4/24) + (3/23*4/24)/(4/24)
# third selected means 22 balls left, first red is gone, second any colour
(3/22*4/24)/(4/24) + (2/22*4/24)/(4/24) + (3/23*4/24)/(4/24)
(3/22*4/24)/(4/24) + (3/22*4/23)/(4/23)
(4/24 * 5/25)/(5/25)
.033/.2
(20/600)/(5/25)
# (i)
# begin with a consonant
21*36*36*36*36*35
# (ii)
# end with an even number (0,2,4,6,8)
26*36*36*36*36*5
# (iii)
# begin with a consonant and end with an even number
21*36*36*36*36*5
# (iv)
# begin with a consonant or end with an even number or both
(21*36*36*36*36*36 + 21*36*36*36*36*5) - (21*36*36*36*36*36 * 21*36*36*36*36*5)
((21/26) + (5/36)) - ((21/26) * (5/36)) # = 0.8344017
# (iv)
# begin with a consonant or end with an even number or both
((21*36*36*36*36*36) + (21*36*36*36*36*5)) - ((21*36*36*36*36*36) * (21*36*36*36*36*5))
# (iv)
# begin with a consonant or end with an even number or both
(((21*36*36*36*36*36) + (21*36*36*36*36*5)) - ((21*36*36*36*36*36) * (21*36*36*36*36*5)))
# (iv)
# begin with a consonant or end with an even number or both
(((21*36*36*36*36*36/26*36*36*36*36*36) + (21*36*36*36*36*5/26*36*36*36*36*36)) - ((21*36*36*36*36*36/26*36*36*36*36*36) * (21*36*36*36*36*5/26*36*36*36*36*36)))
# (iv)
# begin with a consonant or end with an even number or both
(((21/26) + (5/36)) - ((21/26) * (5/36)))
21/26
# (i)
# begin with a consonant
21*36*36*36*36*36/26*36*36*36*36*36
# (i)
# begin with a consonant
21*36*36*36*36*36#/26*36*36*36*36*36
26*36*36*36*36*36
1269789696/1572120576
21/26
5/36
# or
21/26 * 5/36
# (iii)
# begin with a consonant and end with an even number
21*36*36*36*36*5
176359680/1572120576
# or
21/26 * 5/36
# (ii)
# end with an even number (0,2,4,6,8)
26*36*36*36*36*5
218350080/1572120576
# or
5/36
# Q1(b)
# What proportion of passwords consist entirely of the letters up to and
# including m without any repetition?
13*12*11*10*9*8
# Q1(c)
# How many passwords read the same backwards as forwards?
(26*36*36)/(26*36*36*36*36)
# OR
# 1st     2nd     middle  2ndL   last
((26/26)*(36/36)*(36/36)*(1/36)*(1/36))
# OR
# 1st     2nd     middle           2ndL   last
((26/26)*(36/36)*(36/36)*(1/36)*(1/36)*(1/36))
# OR
# 1st     2nd     middle           2ndL   last
((26/26)*(36/36)*(36/36)*(36/36)*(1/36)*(1/36))
26*10*9*8*7*6
26*6*5*4*3*2
# if the first number is > 5
26*5*4*3*2*1
choose(7, 5)
7*6*5
7*6
7*6*5*4*3*2*1/5*4*3*2*1
7*6*5*4*3/5*4*3*2*1
(7*6*5*4*3*2*1)/5*4*3*2*1(2*1)
(7*6*5*4*3*2*1)/5*4*3*2*1*(2*1)
choose(7, 5)
n <- 7
k <- 5
factorial(n)
factorial(n)/factorial(k)
n-k
factorial(n)/factorial(k)*2

