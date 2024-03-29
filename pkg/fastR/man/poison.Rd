\name{poison}
\alias{poison}
\docType{data}
\title{ Poison data }
\description{
The data give the survival times (in hours) in a 3 x 4 factorial
experiment, the factors being (a) three poisons and (b) four treatments. Each
combination of the two factors is used for four animals. The allocation to
animals is completely randomized.
}
\usage{data(poison)}
\format{
  A data frame with 48 observations on the following 3 variables.
  \describe{
    \item{\code{Poison}}{type of poison (1, 2, or 3)}
    \item{\code{Treatment}}{manner of treatment (1, 2, 3, or 4)}
    \item{\code{Time}}{time until death (hours)}
  }
}
\source{
These data are also available from OzDASL, the Australian Data and Story Library
(\url{http://www.statsci.org}).  
(Note: The time measurements of the data at OzDASL are in units of tens of hours.)
}
\references{
Box, G. E. P., and Cox, D. R. (1964). An analysis of transformations (with
Discussion). J. R. Statist. Soc. B, 26, 211-252.
 
Aitkin, M. (1987). Modelling variance heterogeneity in normal regression using
GLIM. Appl. Statist., 36, 332-339.
 
Smyth, G. K., and Verbyla, A. P. (1999). Adjusted likelihood methods for
modelling dispersion in generalized linear models. Environmetrics 10, 696-709.
\url{http://www.statsci.org/smyth/pubs/ties98tr.html}.
}
\examples{
data(poison)
poison.lm <- lm(Time~factor(Poison) * factor(Treatment),poison) 
xplot(poison.lm,w=c(4,2))
anova(poison.lm)
# improved fit using a transformation
poison.lm2 <- lm(1/Time~factor(Poison) * factor(Treatment),poison) 
xplot(poison.lm2,w=c(4,2))
anova(poison.lm)
}
\keyword{datasets}
