# basics
# Ctrl+Enter to run each line

downtime <-c(0, 1, 2, 12, 12, 14, 18, 21, 21, 23, 24, 25, 28, 29, 30, 30, 30, 33, 36, 44, 45, 47, 51)
downtime

mean(downtime)

median(downtime)

range(downtime)

sd(downtime)

# Data Entry

# results <-read.table("G:/data/results.txt" , header = T)
# results <-read.csv("G:/data/results.csv" , header = T)

results <-read.table("C:\\path\\results.txt", header = T)
results
results$arch1[5] # access a variable in results (optional index)

attach(results) # alternatively
arch1[5]

# Missing Values

mean(arch1)
# NA
mean(arch1, na.rm=T)

mean(prog1, na.rm = T)

mean(arch2, na.rm = T)

mean(prog2, na.rm = T)

# Summary Stats

summary(downtime)

summary(results)
