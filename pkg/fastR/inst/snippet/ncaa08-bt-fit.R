# fit a Bradley-Terry model
require(BradleyTerry)
BTm( ncaa08 ~ .. ) -> ncaa08.model
# look at top teams 
ncaa08.model$coefficients[rev(order(ncaa08.model$coefficients))[1:30]]
