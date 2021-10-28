# Series Reliability

# input -> c1 -> c2 -> c3 -> c4 -> c5 -> output

# A system consists of 5 components in series each having a reliability
# of 0.97. What is the reliability of the system?

0.97 * 0.97 * 0.97 * 0.97 * 0.97
# OR
rel <- 0.97^5
rel
