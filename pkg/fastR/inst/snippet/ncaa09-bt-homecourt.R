BTm( ncaa09 ~ .., order.effect=ncaa09$numHomeTeamWon) -> ncaa09.model2
ncaa09.model2$coefficients[".order"] -> oe; oe
require(faraway); ilogit(oe)    # prob home team wins if teams are "equal"
ncaa09.model2$coefficients[rev(order(ncaa09.model2$coefficients))[1:30]]
