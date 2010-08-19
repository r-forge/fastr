\name{col.fastR}
\alias{col.fastR}
\title{ Lattice Theme }
\description{ A theme for use with lattice graphics. }
\usage{
col.fastR(bw = FALSE)
}
\arguments{
  \item{\code{bw}}{whether color scheme should be "black and white"}
}
\value{
Returns a list that can be supplied as the \code{theme} to 
\code{\link{trellis.par.set}()}.
}
\author{
Randall Pruim
}
\note{
This theme was used in the production
of the book \cite{Foundations and Applications of Statistics}
}

\seealso{
\code{\link{trellis.par.set()}}, 
\code{\link{show.settings()}} 
}
\examples{
trellis.par.set(theme=col.fastR())
}
\keyword{ graphics }
