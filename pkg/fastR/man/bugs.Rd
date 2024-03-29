\name{bugs}
\alias{bugs}
\docType{data}
\title{ Bugs }
\description{
This data frame contains data from an experiment to see if insects are 
more attracted to some colors than to others. The researchers prepared 
colored cards with a sticky substance so that insects that landed on them could 
not escape. The cards were placed in a field of oats in July. Later the researchers 
returned, collected the cards, and counted the number of cereal leaf beetles trapped 
on each card. 
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

\source{
M. C. Wilson and R. E. Shade, 
Relative attractiveness of various luminescent 
colors to the cereal leaf beetle and the meadow spittlebug, 
\emph{Journal of Economic Entomology} 60 (1967), 578--580. 
}
\examples{
data(bugs)
summary(NumTrap ~ Color, bugs, fun=favstats)
}
\keyword{datasets}
