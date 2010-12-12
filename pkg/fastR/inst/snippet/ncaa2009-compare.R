compareTeams <-  
  function(team1,team2,model,abilities=BTabilities(model)) { 
    a <- abilities[team1,1]
    b <- abilities[team2,1]
    return(ilogit(a-b))
} 
compareTeams('Michigan St.','Connecticut',ab=ratings)
compareTeams('North Carolina','Villanova',ab=ratings)
compareTeams('North Carolina','Michigan St.',ab=ratings)
