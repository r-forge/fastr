\name{inflation}
\alias{inflation}
\docType{data}
\title{ Inflation data }
\description{
The article developed four measures of central bank independence and explored
their relation to inflation outcomes in developed and developing countries.
This datafile deals with two of these measures in 23 nations.
}
\usage{data(inflation)}
\format{
  A data frame with 23 observations on the following 5 variables.
  \describe{
    \item{\code{country}}{country where data were collected}
    \item{\code{ques}}{questionnaire index of independence}
    \item{\code{inf}}{annual inflation rate, 1980-1989 (percent)}
    \item{\code{legal}}{legal index of independence}
    \item{\code{dev}}{developed (1) or developing (2) nation}
  }
}
\source{
These data are available from OzDASL, the Australasian Data and Story Library
(\url{http://www.statsci.org/data/}).
}
\references{
A. Cukierman, S.B. Webb, and B. Negapi, 
"Measuring the Independence of Central Banks and Its Effect on Policy Outcomes," 
World Bank Economic Review, Vol. 6 No. 3 (Sept 1992), 353-398.
}
\examples{
data(inflation)
}
\keyword{datasets}
