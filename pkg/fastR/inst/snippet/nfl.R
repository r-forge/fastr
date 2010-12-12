nfl <- nfl2007                         # shorten name of data set
nfl[1:3,]
nfl$dscore <- nfl$HomeScore - nfl$VisitorScore
w <- which(nfl$dscore > 0)
nfl$winner <- nfl$Visitor; nfl$winner[w] <- nfl$Home[w]
nfl$loser <- nfl$Home; nfl$loser[w] <- nfl$Visitor[w]

# did the home team win?
nfl$homeTeamWon <- nfl$dscore > 0
# convert {F,T} to {-1,1} 
nfl$numHomeTeamWon <- as.numeric(nfl$homeTeamWon)
nfl[1:3,]

# fit Bradley-Terry model
require(BradleyTerry2)
BTm(cbind(numHomeTeamWon,1-numHomeTeamWon), Home, Visitor, data=nfl, id='team') -> nfl.model
