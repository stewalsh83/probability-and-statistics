attach(chickwts)

# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q1 - Part 1
# Create a figure with boxplots for each feed type alongside each other using R.
par(mfrow=c(1,1))
boxplot(weight ~ feed, xlab='Feed type', ylab='Weight (grams)', main='A comparison of chick weights by feed type')
"Screenshot"

# Q1 - Part 2
# Do the boxplots suggest that there is any significant difference in the effect of the feed type?
"Yes, the boxplots indicate there is a difference in weights for chicks depending on the feed type. Horsebean
appears to result in the lowest median chick weight, and casein results in the highest median weight."


# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q2 - Part 1
# Create two histograms one above the other for chick weights using R. The first histogram should be
# for chick weights fed “sunflower” and the second for those fed “horsebean”. You should make sure
# that the breaks between the bins are the same in the two histograms i.e. the x-axis should align on
# both histograms to facilitate comparison.
par(mfrow = c(2, 1))
hist(weight[feed=='sunflower'], breaks=seq(0,500, 50), main='Chick weights for sunflower (top) vs horsebean (bottom)', xlab='')
hist(weight[feed=='horsebean'], breaks=seq(0,500, 50), main='', xlab='Weight (grams)')
"Screenshot"

# Q2 - Part 2
# Do the two histograms suggest that there is any significant difference in the effect of the two feed
# types?
"It appears that there are more chicks with low weights in the 100-150 range, with no chicks with a weight
above 250 for horsebean. For sunflower feed, most of the chick weights are between 300-350. Sunflower
seed appears to increase chick weight more than horsebean."


# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q3 - Part 1
# Compute the mean and variance for each feed type.
tapply(weight, feed, mean)
tapply(weight, feed, var)
"Screenshot"
# Q3 - Part 2
# Is there one feed type in particular that results in a higher mean weight of the chicks relative to the
# other feeds?
"Yes, sunflower results in the highest mean weight."


# -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
# Q4
# What proportion of chicks weigh less 159 grams that have been fed linseed or sunflower.
n_weights <- weight[feed=='linseed' | feed=='sunflower']
proportion <- length(n_weights[n_weights < 159]) / length(weight)
# 2.816901% of the chicks i.e. proportion * 100
n_weights
proportion * 100
