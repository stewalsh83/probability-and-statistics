# Create a scatter plot
# inspect the relationship between the population and wealth of an area

# Region Ashire Bshire Cshire WestTT EastTT SouthTT NorthTT
# wealth 80     110    110    70     120    90      110
# pop%   9      19     17     8      19     13      15

wealth <- c(80, 110, 110, 70, 120, 90, 110)
prob <- c(0.09, 0.19, 0.17, 0.08, 0.19, 0.13, 0.15)

plot(wealth, prob, xlab="Wealth of town", ylab="% Population")

# There seems to be a linear relationship i.e. as the population increases for a town so does its wealth!
