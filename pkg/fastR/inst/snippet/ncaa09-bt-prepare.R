# data from kenpom.com/cbbga09.txt converted to csv format
ncaa09 <-
read.csv("http://www.calvin.edu/~rpruim/data/sports/ncaabk09.csv")
# determine winner and loser from score
ncaa09$dscore <- ncaa09$hscore - ncaa09$ascore
ncaa09$homeTeamWon <- ncaa09$dscore > 0
ncaa09$numHomeTeamWon <- -1 + 2 * as.numeric(ncaa09$homeTeamWon)
w <- which(ncaa09$homeTeamWon)
ncaa09$winner <- as.character(ncaa09$away)
ncaa09$winner[w] <- as.character(ncaa09$home)[w]
ncaa09$loser <- as.character(ncaa09$home)
ncaa09$loser[w] <- as.character(ncaa09$away)[w]
ncaa09$homeTeamWon <- ncaa09$winner == ncaa09$home
ncaa09$numHomeTeamWon <- -1 + 2 * as.numeric(ncaa09$homeTeamWon)
# now handle neutral site games
ind <- grep("N",ncaa09$notes)
ncaa09$numHomeTeamWon[ind] <- 0
# remove teams with few games (div II teams that played a few div I teams)
ncaa09.orig <- ncaa09
teams <- c(ncaa09$winner,ncaa09$loser)
t <- table(teams)
deleteTeams <- names(t[t<=5])
ncaa09 <- ncaa09[!( ncaa09$winner %in% deleteTeams | 
                     ncaa09$loser %in% deleteTeams ), ]
