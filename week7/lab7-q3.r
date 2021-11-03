# Plot the distribution (on a histogram) of the imdb_rating for all episodes

attach(simp)

hist(imdb_rating, breaks=c(0:10), main="Distribution of IMDB Ratings for Simpsons")
