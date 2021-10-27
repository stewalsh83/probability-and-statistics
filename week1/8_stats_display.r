# basics
# Ctrl+Enter to run each line

# Graphical Display vs Summary Statistics

x1<-c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y1<-c(8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 4.26, 10.84, 4.82, 5.68)

x2 <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y2 <-c(9.14, 8.14, 8.74, 8.77, 9.26, 8.10, 6.13, 3.10, 9.13, 7.26, 4.74)

x3<- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y3 <- c(7.46, 6.77, 12.74, 7.11, 7.81, 8.84, 6.08, 5.39, 8.15, 6.42, 5.73)

x4<- c(8, 8, 8, 8, 8, 8, 8, 19, 8, 8, 8)
y4 <- c(6.58, 5.76, 7.71, 8.84, 8.47, 7.04, 5.25, 12.50, 5.56, 7.91, 6.89)

# Everything seems the same
mean(x1)
mean(x2)
mean(x3)
mean(x4)
mean(y1)
mean(y2)
mean(y3)
mean(y4)

sd(x1)
sd(x2)
sd(x3)
sd(x4)
sd(y1)
sd(y2)
sd(y3)
sd(y4)


# Everything seems different
par(mfrow = c(2, 2))
# xlim and ylim functions to set limits
plot(x1,y1, xlim=c(0, 20), ylim =c(0, 13))
plot(x2,y2, xlim=c(0, 20), ylim =c(0, 13))
plot(x3,y3, xlim=c(0, 20), ylim =c(0, 13))
plot(x4,y4, xlim=c(0, 20), ylim =c(0, 13))

par(mfrow = c(1,1))

