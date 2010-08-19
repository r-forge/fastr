\name{corn}
\alias{corn}
\docType{data}
\title{ Corn Yield }
\description{
William Gosset analyzed data from an experiment
comparing the yield of regular and kiln-dried corn.
}
\usage{data(corn)}
\format{
  A data frame with 11 observations on the following 2 variables.
  \describe{
    \item{\code{reg}}{yield of regular corn }
    \item{\code{kiln}}{yield of kiln-dried corn}
  }
}
\source{
}
\references{
}
\examples{
corn2 <- stack(corn)
names(corn2) <- c('yield','treatment')
lm(yield ~ treatment, corn2)
t.test(yield ~ treatment, corn2)
t.test(corn$reg,corn$kiln)
}
\keyword{datasets}
