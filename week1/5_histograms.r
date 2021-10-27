# basics
# Ctrl+Enter to run each line

results <-read.table("C:\\path\\results.txt", header = T)

hist(
  arch1, breaks = 5,
  xlab ="Marks(%)",
  ylab = "Number of students",
  main = "Architecture Semester 1"
)

hist(prog1, breaks = 5,
     xlab ="marks(%)",
     ylab = "Number of Students",
     main = "Architecture Semester 1"
)

bins <- c(0, 40, 60, 80, 100)
hist(arch1,
     xlab ="Marks(%)", breaks = bins,
     ylab = "Number of students",
     main = "Architecture Semester 1")

# 2x2 matrix
par(mfrow = c(2,2))
hist(arch1, xlab = "Architecture",
     main = " Semester 1", ylim = c(0, 35))
hist(arch2, xlab = "Architecture",
     main = " Semester 2", ylim = c(0, 35))
hist(prog1, xlab = "Programming",
     main = " ", ylim = c(0, 35))
hist(prog2, xlab = "Programming",
     main = " ", ylim = c(0, 35))

par(mfrow = c(1, 1))

