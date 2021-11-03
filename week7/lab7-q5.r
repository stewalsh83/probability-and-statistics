# Similar to questions 4, except there should be 10 bins between 5 and 10 (each .5 wide)

attach(simp)
par(mfrow=c(2,1))

hist(imdb_rating[season > 1 & season <= 10], breaks=seq(5,10,.5), 
     main="Comparing distribution of ratings from Seasons 1-10 (top) and Season 11-20 (bottom)", 
     xlab="IMDB Rating")

hist(imdb_rating[season > 11 & season <= 20], breaks=seq(5,10,.5), xlab="IMDB Rating")

# Change c(5:10) to seq(5,10,.5)