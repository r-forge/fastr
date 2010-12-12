ncaa <- ncaa2010   # make a local copy (with shorter name)
# at a neutral site?
ncaa$neutralSite <- grepl('notes',ncaa$n,ignore.case=TRUE)
# did home team win?
ncaa$homeTeamWon <- ncaa$hscore > ncaa$ascore 
# remove teams with few games (div II teams that played a few div I teams)
teams <- c(ncaa$home, ncaa$away)
t <- table(teams)
deleteTeams <- names(t[t<=5])
ncaa <- ncaa[!( ncaa$home %in% deleteTeams | 
    ncaa$away %in% deleteTeams ), ]
# remove unused levels from home and away factors
teams <- union(ncaa$home, ncaa$away)
ncaa$home <- factor(ncaa$home, levels=teams)
ncaa$away <- factor(ncaa$away, levels=teams)
