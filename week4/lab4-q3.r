cards <- read.csv("C:\\path\\cards.csv", header=T)
cards

# What is the probability of getting any heart?
sum(cards$suit == "Heart") / nrow(cards)

# What is the probability of getting any Queen?
sum(cards$rank == "Q") / nrow(cards)

# What is the probability of getting Ace or Spade?
sum(cards$rank == "A") + sum(cards$suit == "Spade") - sum(cards$rank == "A" & cards$suit == "Spade") / nrow(cards)

# What is the probability of getting Ace and Spade?
sum(cards$rank == "A" & cards$suit == "Spade")/ nrow(cards)

# What is the probability of getting Heart and Spade?
sum(cards$suit == "Heart" & cards$suit == "Spade")/ nrow(cards)

# What is the probability of getting 10 or less?
1-(sum(cards$rank == "A" | cards$rank == "K" | cards$rank == "Q" | cards$rank == "J") / nrow(cards))

# Create a subset of your dataset called heart (this new dataset must contain only suit equal to heart)
heart <- subset(cards, cards$suit=="Heart")
heart

# Use the command all( datasetA$column %in% datasetB$column) to test if one is subset from another.
all(heart$suit %in% cards$suit)
