BTm( ncaa08 ~ .., order.effect=ncaa08$numHomeTeamWon) -> ncaa08.model2
ncaa08.model2$coefficients[".order"] -> oe; oe
require(faraway); ilogit(oe)   # prob home team wins if teams are "equal"
ncaa08.model2$coefficients[rev(order(ncaa08.model2$coefficients))[1:30]]
