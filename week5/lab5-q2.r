# Reliability of a Parallel System
# A system consists of 5 components in parallel. If each component
# has a reliability of 0.97, what is the overall reliability of the system?

#           0.97
#           0.97
# input ->  0.97 -> output
#           0.97
#           0.97

# complementary approach,
# P(At least one component is functioning)
# = 1- P(all components fail)

rel = 1 - 0.03^5
rel
