# basics
# Ctrl+Enter to run each line

results <-read.table("C:\\path\\results.txt", header = T)

plot(prog1, prog2,
     xlab = "Programming, Semester 1",
     ylab = "Programming, Semester 2")


pairs(results[2:5])
