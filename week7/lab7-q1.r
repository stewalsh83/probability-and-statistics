
simp <- read.csv("C:\\path\\simpsons_episodes.csv", header=T)
simp

attach(simp)

# get variable/col names
colnames(simp)

# What's the mean of rating?
ssmean <- mean(imdb_rating, na.rm=T)
ssmean

