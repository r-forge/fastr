\name{drag}
\alias{drag}
\docType{data}
\title{ Drag force experiment }
\description{
The data come from an experiment to determine how terminal velocity depends on
the mass of the falling object.  A helium balloon was rigged with a small basket
and just the ballast to make it neutrally buoyant.  Mass was then added
and the terminal velocity is calculated by measuring the time it took to fall
between two sensors once terminal velocity has been reached.  Larger masses
were drop from higher heights and used sensors more widely spaced.
}
\usage{data(drag)}
\format{
  A data frame with 42 observations on the following 5 variables.
  \describe{
    \item{\code{time}}{time (in seconds) to travel between two sensors}
    \item{\code{mass}}{net mass (in kg) of falling object}
    \item{\code{height}}{distance (in meters) between two sensors}
    \item{\code{velocity}}{average velocity (in m/s) computed from 
		\code{time} and \code{height}}
    \item{\code{force.drag}}{calculated drag force (in N, 
	\code{force.drag = mass * 9.8}) using the fact that at 
	terminal velocity, the drag force is equal to the force of gravity}
  }
}
\source{
Calvin College physics students under the supervision of 
Professor Steve Plath.
}
\examples{
data(drag)
with(drag,force.drag / mass)
xyplot(velocity ~ mass, drag)
}
\keyword{datasets}
