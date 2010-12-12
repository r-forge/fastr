# sum of absolute deviations (sad)
sad <- function(x) { sum(abs(x-486/4)) }
plot <- statTally(golfballs, rgolfballs, sad, xlab="test statistic (abs deviation)")
