\name{ice}
\alias{ice}
\docType{data}
\title{ Cooling muscles with ice }
\description{
This data set contains the results of an experiment comparing 
the efficacy of different forms of dry ice application in reducing the temperature 
of the calf muscle.
}
\usage{data(ice)}

\details{
The 12 subjects in this study came three times, at 
least four days apart, and received one of three ice treatments (cubed ice, crushed 
ice, or ice mixed with water). In each case, the ice was prepared in a plastic bag 
and applied dry to the subjects calf muscle. 
The temperature measurements were taken on the skin surface and inside the 
calf muscle (via a 4 cm long probe) every 30 seconds for 20 minutes prior to icing, 
for 20 minutes during icing, and for 2 hours after the ice had been removed. 
The temperature measurements are stored in variables that begin with \code{B} (baseline), 
\code{T} (treatment), or \code{R} (recovery) followed by a numerical code for the elapsed 
time formed by concatenating the number of minutes and seconds. For example, 
\code{R1230} contains the temperatures 12 minutes and 30 seconds after the ice had been 
removed. 

Variables include
  \describe{
    \item{\code{Subject}}{identification number}
    \item{\code{Sex}}{a factor with levels \code{female} \code{male}}
    \item{\code{Weight}}{weight of subject (kg)}
    \item{\code{Height}}{height of subject (cm)}
    \item{\code{Skinfold}}{skinfold thickness}
    \item{\code{Calf}}{calf diameter (cm)}
    \item{\code{Age}}{age of subject}
    \item{\code{Location}}{a factor with levels \code{intramuscular} \code{surface}}
    \item{\code{Treatment}}{a factor with levels \code{crushed} \code{cubed} \code{wet}}
    \item{\code{B0}}{baseline temperature at time 0}
    \item{\code{B30}}{baseline temperature 30 seconds after start}
    \item{\code{B100}}{baseline temperature 1 minute after start}
    \item{\code{B1930}}{baseline temperature 19 minutes 30 seconds start}
    \item{\code{T0}}{treatment temperature at beginning of treatment}
    \item{\code{T30}}{treatment temperature 30 seconds after start of treatment}
    \item{\code{T100}}{treatment temperature 1 minute after start of treatment}
    \item{\code{T1930}}{treatment temperature 19 minutes 30 seconds after start of treatment}
    \item{\code{R0}}{recovery temperature at start of recovery}
    \item{\code{R30}}{recovery temperature 30 seconds after start of recovery}
    \item{\code{R100}}{recovery temperature 1 minute after start of recovery}
    \item{\code{R12000}}{recovery temperature 120 minutes after start of recovery}
  }
}
\source{
Dykstra, J. H., Hill, H. M., Miller, M. G., Michael T. J., Cheatham, C. C., and Baker,
R.J., Comparisons of cubed ice, crushed ice, and wetted ice on intramuscular 
and surface temperature changes, \emph{Journal of Athletic Training} 44 (2009), no. 2, 
136--141. 
}

\examples{
data(ice)
xyplot(Weight ~ Skinfold, groups=Sex, ice, auto.key=TRUE)
}
\keyword{datasets}
