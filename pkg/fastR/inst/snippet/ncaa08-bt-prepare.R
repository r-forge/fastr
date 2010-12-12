# data from kenpom.com/cbbga08.txt converted to csv format
ncaa08 <-
read.csv("http://www.calvin.edu/~rpruim/data/sports/ncaabk08.csv")
ncaa08$dscore <- ncaa08$hscore - ncaa08$ascore
ncaa08$homeTeamWon <- ncaa08$dscore > 0
ncaa08$numHomeTeamWon <- -1 + 2 * as.numeric(ncaa08$homeTeamWon)
w <- which(ncaa08$homeTeamWon)
ncaa08$winner <- as.character(ncaa08$away)
ncaa08$winner[w] <- as.character(ncaa08$home)[w]
ncaa08$loser <- as.character(ncaa08$home)
ncaa08$loser[w] <- as.character(ncaa08$away)[w]
ncaa08$homeTeamWon <- ncaa08$winner == ncaa08$home
ncaa08$numHomeTeamWon <- -1 + 2 * as.numeric(ncaa08$homeTeamWon)
# now handle neutral site games
ind <- grep("N",ncaa08$notes)
ncaa08$numHomeTeamWon[ind] <- 0
# remove teams with few games (div II teams that played a few div I teams)
ncaa08.orig <- ncaa08
teams <- c(ncaa08$winner,ncaa08$loser)
t <- table(teams)
deleteTeams <- names(t[t<=5])
ncaa08 <- ncaa08[!( ncaa08$winner %in% deleteTeams | 
                     ncaa08$loser %in% deleteTeams ), ]
