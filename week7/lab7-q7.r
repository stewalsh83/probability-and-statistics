# Show a boxplot for the imdb ratings for season 10. Set the y limit to be from 6.5 to 8.5

attach(simp)

boxplot(imdb_rating[season == 10], ylim=c(6.5, 8.5), 
        ylab="Rathing", 
        main="Distribution of Simpsons Season 10 Ratings")
