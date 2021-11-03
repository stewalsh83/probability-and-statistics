# Show a boxplot for the imdb ratings across all episodes. Label the y-axis.

par(mfrow=c(1,1))
attach(simp)

boxplot(imdb_rating, ylab="Rathing", main="Distribution of Simpsons Episode Ratings")
