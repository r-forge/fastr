ratings <- cbind(ratings, 
    rating=100*ilogit(ratings[,1])) 
ratings[
    rev(order(ratings[,1]))[1:30],] 
