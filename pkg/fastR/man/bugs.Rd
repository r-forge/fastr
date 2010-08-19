\name{bugs}
\alias{bugs}
\docType{data}
\title{ Bugs }
\description{
Data from an experiment testing the attractiveness 
of four colors to insects.
}

\usage{data(bugs)}
\format{
  A data frame with 24 observations on the following 2 variables.
  \describe{
    \item{\code{Color}}{color of card; one of 
	\code{B}(lue) \code{G}(reen) \code{W}(hite) \code{Y}(ellow)}
    \item{\code{NumTrap}}{number of insects trapped on the card}
  }
}
\details{
}
\source{
}
\references{
}
\examples{
data(bugs)
summary(NumTrap ~ Color, bugs, fun=favstats)
}
\keyword{datasets}
