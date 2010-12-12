require(BradleyTerry2)
ncaa$home <- data.frame(team=ncaa$home, at.home = 1 - ncaa$neutralSite)
ncaa$away <- data.frame(team=ncaa$away, at.home = 0 + ncaa$neutralSite)
ncaa.model2 <- update( ncaa.model, id='team', formula = ~ team + at.home )
