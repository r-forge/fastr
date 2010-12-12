data(ncaa2009)
# determine winner and loser from score
ncaa2009$dscore <- ncaa2009$hscore - ncaa2009$ascore
ncaa2009$homeTeamWon <- ncaa2009$dscore > 0
ncaa2009$numHomeTeamWon <- -1 + 2 * as.numeric(ncaa2009$homeTeamWon)
w <- which(ncaa2009$homeTeamWon)
ncaa2009$winner <- as.character(ncaa2009$away)
ncaa2009$winner[w] <- as.character(ncaa2009$home)[w]
ncaa2009$loser <- as.character(ncaa2009$home)
ncaa2009$loser[w] <- as.character(ncaa2009$away)[w]
ncaa2009$homeTeamWon <- ncaa2009$winner == ncaa2009$home
ncaa2009$numHomeTeamWon <- -1 + 2 * as.numeric(ncaa2009$homeTeamWon)
# now handle neutral site games
ind <- grep("N",ncaa2009$notes)
ncaa2009$numHomeTeamWon[ind] <- 0
# remove teams with few games (div II teams that played a few div I teams)
ncaa2009.orig <- ncaa2009
teams <- c(ncaa2009$winner,ncaa2009$loser)
t <- table(teams)
deleteTeams <- names(t[t<=5])
ncaa2009 <- ncaa2009[!(ncaa2009$winner %in% deleteTeams | 
    ncaa2009$loser %in% deleteTeams), ]
