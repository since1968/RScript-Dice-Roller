# roll.R
# Rolls a specified number of dice and outputs to command line

# usage:
# To roll 3d6+5:
# Rscript roll.R 3 6 5
# To roll 3d6
# Rscript roll.R 3 6 0

# use this line to test arguments:
# Rscript roll.R 1d6+10
# print(commandArgs(TRUE)[1])
# output is:
# [1] "1d6+10"


args <- commandArgs(trailingOnly = TRUE)
# rnorm(n=as.numeric(args[1]), mean=as.numeric(args[2]))


# die = as.numeric(args[2])

monster <- sample(1:as.numeric(args[2]), as.numeric(args[1]), replace = T)
monster
monster <- sum(monster) + as.numeric(args[3])
monster