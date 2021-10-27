# basics
# Ctrl+Enter to run each line

downtime <-c(0, 1, 2, 12, 12, 14, 18, 21, 21, 23, 24, 25, 28, 29, 30, 30, 30, 33, 36, 44, 45, 47, 51)

boxplot(downtime)
boxplot(downtime,
        xlab = "downtime",
        ylab = "minutes")

boxplot(arch1, arch2,
        xlab="Architecture Semesters 1, and 2")

boxplot(arch1~gender,
        xlab = "gender",
        ylab = "Marks (%)",
        main = "Architecture Semester 1")

par(mfrow = c(2, 2)) # 2x2 matrix
boxplot (arch1~gender,
         main = "Architecture Semester 1")
boxplot(arch2~gender,
        main = "Architecture Semester 2")
boxplot(prog1~gender,
        main = "Probability Semester 1")
boxplot(prog2~gender,
        main = "Probability Semester 2")

par(mfrow = c(2, 1)) # one above the other

par(mfrow = c(1, 1)) # restores full screen

