######################################################################
#
# util.R
#
# copyright (c) 2002, Karl W Broman, Johns Hopkins University
# Licensed under the GNU General Public License version 2 (June, 1991)
#
# Utility functions for labstat package
# Contains: sem
#
######################################################################

# sem: calculate standard error of the mean
sem <- function(x) sd(x,na.rm=TRUE)/sqrt(sum(!is.na(x)))
