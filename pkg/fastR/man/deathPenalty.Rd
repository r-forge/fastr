\name{deathPenalty}
\alias{deathPenalty}
\docType{data}
\title{ Death Penalty and Race }
\description{
A famous example of Simpson's paradox.

%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(deathPenalty)}
\format{
  A data frame with 326 observations on the following 3 variables.
  \describe{
    \item{\code{Penalty}}{a factor with levels \code{Death} \code{Not}}
    \item{\code{Victim}}{a factor with levels \code{Black} \code{White}}
    \item{\code{Defendant}}{a factor with levels \code{Black} \code{White}}
  }
}
\source{
Radelet, M. (1981). Racial characteristics and imposition of the 
death penalty. \emph{American Sociological Review}, 46:918–927. 
}
\references{
}
\examples{
xtabs(~Defendant+Penalty,deathPenalty)
xtabs(~Defendant+Victim+Penalty,deathPenalty)
}
\keyword{datasets}
