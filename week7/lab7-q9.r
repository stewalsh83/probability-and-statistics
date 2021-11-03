# Using your code for 8), modify it to show the average imdb_rating (in green) for
# episodes 1-10 of each season (1-20). On the same plot, also show the average
# imdb_rating for episodes 10-20 of each season (in red).

attach(simp)
colnames(simp)

avg_per_season_firstten <- 0
avg_per_season_secondten <- 0

for(si in c(1:max(season)))
{
  avg_per_season_firstten[si] = mean(imdb_rating[season == si & number_in_season < 10 & number_in_season >= 1], na.rm=T)

  avg_per_season_secondten[si] = mean(imdb_rating[season == si & number_in_season>=10 & number_in_season < 20], na.rm=T )
}

plot(avg_per_season_firstten, xlab='Season number', ylab='IMDB Rating', 
     main='Simpsons IMDB Rating over time', type='o', col='green')

points(avg_per_season_secondten, type='o', col='red')

# OR without for loop using tapply

plot(tapply(imdb_rating[number_in_season >= 1 & number_in_season <10], 
    season[number_in_season >= 1 & number_in_season <10], mean, na.rm=T), 
    xlab='Season number', ylab='IMDB Rating', 
    main='Simpsons IMBD Rating over time', type='o', col='green')

points(tapply(imdb_rating[number_in_season >= 10 & number_in_season <20], 
      season[number_in_season >= 10 & number_in_season <20], mean, na.rm=T), 
      type='o', col='red')
