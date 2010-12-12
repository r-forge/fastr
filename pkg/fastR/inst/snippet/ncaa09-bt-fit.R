# fit a Bradley-Terry model
require(BradleyTerry)
BTm( ncaa09 ~ .. ) -> ncaa09.model
# look at top teams 
ncaa09.model$coefficients[rev(order(ncaa09.model$coefficients))[1:30]]
