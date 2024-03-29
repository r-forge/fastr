\name{palettes}
\alias{palettes}
\docType{data}
\title{ Palette repair data }
\description{
The palettes data set contains data from a firm that recycles 
palettes. Palettes from warehouses are bought, repaired, and resold. (Repairing 
a palette typically involves replacing one or two boards.) The company has four 
employees who do the repairs. The employer sampled five days for each employee 
and recorded the number of palettes repaired. 
}
\usage{data(palettes)}
\format{
A data frame with 20 observations on the following 3 variables.
  \describe{
    \item{\code{palettes}}{number of palettes repaired}
    \item{\code{employee}}{a factor with levels \code{A} \code{B} \code{C} \code{D}}
    \item{\code{day}}{a factor with levels \code{day1} \code{day2} \code{day3} \code{day4} \code{day5}}
  }
}
\source{Michael Stob, Calvin College }

\examples{
data(palettes)
# Do the employees differ in the rate at which they repair palettes?
pal.lm1 <- lm(palettes~employee,palettes) 
anova(pal.lm1)
# Now using day as a blocking variable
pal.lm2 <- lm(palettes~employee+day,palettes) 
anova(pal.lm2)
xyplot(palettes~day,palettes,
		groups=employee,
		main="Productivity by day and employee",
		type='b',auto.key=list(columns=4,points=FALSE,lines=TRUE))
}
\keyword{datasets}
