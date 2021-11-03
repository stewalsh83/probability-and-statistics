# Plot how the average imdb_rating per Simpson's season has changed over time i.e.
# from season 1 to season 28. ( hint: avg_per_season[i] = mean( imdb_rating[seas.. )

attach(simp)

avg_per_season <- 0

for(si in c(1:max(season)))
  avg_per_season[si] = mean(imdb_rating[season == si], na.rm=T)

plot(avg_per_season, xlab='Season number', ylab='IMDB Rating', 
     main='Simpsons IMDB Rating over time', type='b')

# OR without for loop using tapply

plot(tapply(imdb_rating, season, mean, na.rm=T), 
     xlab='Season number', ylab='IMDB Rating', 
     main='Simpsons IMBD Rating over time', type='b')
