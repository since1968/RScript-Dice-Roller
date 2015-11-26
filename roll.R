# roll.R
# Rolls a specified number of dice and outputs to command line

# usage:
# To roll 3d6
# Rscript roll.R 3 6
# To roll 3d6+5 include optional third argument:
# Rscript roll.R 3 6 5

args <- commandArgs(trailingOnly = TRUE)
# assume there's no modifier
modifier <- 0

sprintf("You rolled:")
monster <- sample(1:as.numeric(args[2]), as.numeric(args[1]), replace = T)
monster


# check for optional third argument, otherwise just sum the rolls
if(!is.na(args[3])) {
	modifier <- as.numeric(args[3])
	}

monster <- sum(monster) + modifier
sprintf("Your total: %s", monster)
