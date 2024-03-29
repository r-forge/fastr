\name{vaov}
\alias{vaov}
\alias{vaov.formula}
\title{ ANOVA vectors }
\description{ Compute vectors associated with 1-way ANOVA }
\usage{
vaov(x, ...)

vaov.formula(x, data = parent.frame(), ...)

}


\arguments{
  \item{x}{a formula.}
  \item{data}{a data frame.}
  \item{\dots}{ additional arguments.}
}
\details{
This is primarily designed for demonstration purposes to show how 1-way ANOVA models
partition variance.  It may not work properly for more complicated models.
}
\value{
A data frame with variables including
\code{grandMean},
\code{groupMean},
\code{ObsVsGrand},
\code{STotal},
\code{ObsVsGroup},
\code{SError},
\code{GroupVsGrand}, and 
\code{STreatment}.
The usual SS terms can be computed from these by summing.
}
\author{
Randall Pruim
}

\examples{
aov(pollution ~ location, airpollution)
vaov(pollution ~ location, airpollution)
}
\keyword{ stats }

