# Show boxplots (side by side) for IMDB Ratings from Season 5-10 and for Seasons 10-15.

attach(simp)

boxplot(imdb_rating[5 <= season & season < 10], imdb_rating[season > 10 & season < 15],
        names=c("Season 5-10", "Season 10-15"),
        main='Comparing seasons of Simpsons by IMDB Rating',
        ylab='IMDB Rating')
