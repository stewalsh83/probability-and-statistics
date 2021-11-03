# Plot the distribution (on a histogram) of the imdb_rating for all episodes from seasons 1 to 10.
# Directly below it, plot the distribution (on a histogram) of the imdb_rating for all episodes from season 10 to 20.
# The x-axis on both plots should be aligned.
# There should be 5 bins on the x-axis corresponding to an imdb_rating of 5 through to 10 e.g. 5,6,7,8,9,10


attach(simp)
par(mfrow=c(2,1))

colnames(simp)

ss_1_10 <- imdb_rating[season > 1 & season <= 10]

hist(ss_1_10, breaks=c(5:10), 
     main="Comparing distribution of ratings from Seasons 1-10 (top) and Season 11-20 (bottom)", 
     xlab="IMDB Rating")

hist(imdb_rating[season > 11 & season <= 20], breaks=c(5:10), xlab="IMDB Rating")
