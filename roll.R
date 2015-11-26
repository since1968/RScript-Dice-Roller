# roll.R
# Rolls a specified number of dice and outputs to command line
# 
# Args:
#	x: The number of dice to roll. A number.
# 	y: The number of sides on each die. A number.
#	z: The modifier to add to the sum. A number. Optional.
#
# Returns:
#	The z plus sum of a y-sided dice, rolled x times.
#
# Usage:
#	To simulate 3d6
#	Rscript roll.R 3 6
#	To simulate 3d6+5
#	Rscript roll.R 3 6 5

args <- commandArgs(trailingOnly = TRUE)
# assume there's no modifier
modifier <- 0

sprintf("You rolled:")
roll <- sample(1:as.numeric(args[2]), as.numeric(args[1]), replace = T)
roll


# check for optional third argument, otherwise just sum the rolls
if(!is.na(args[3])) {
	modifier <- as.numeric(args[3])
	}

roll <- sum(roll) + modifier
sprintf("Your total: %s", roll)
