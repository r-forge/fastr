\name{step}
\alias{step}
\docType{data}
\title{ Stepping experiment }
\description{
An experiment was conducted by students at The Ohio State University in the
fall of 1993 to explore the nature of the relationship between a person's heart
rate and the frequency at which that person stepped up and down on steps of
various heights. 
}
\usage{data(step)}
\format{
  A data frame with 30 observations on the following 7 variables.
  \describe{
    \item{\code{order}}{performance order}
    \item{\code{block}}{number of experimenter block}
    \item{\code{restHR}}{resting heart rate (beats per minute)}
    \item{\code{HR}}{final heart rate}
    \item{\code{height}}{height of step (\code{hi} or \code{lo})}
    \item{\code{freq}}{whether subject stepped \code{fast}, \code{medium}, or \code{slow}}
  }
}
\details{
An experiment was conducted by students at The Ohio State University in the
fall of 1993 to explore the nature of the relationship between a person's heart
rate and the frequency at which that person stepped up and down on steps of
various heights. The response variable, heart rate, was measured in beats per
minute. There were two different step heights: 5.75 inches (coded as
\code{lo}), and 11.5 inches (coded as \code{hi}). There were three rates of
stepping: 14 steps/min. (coded as \code{slow}), 21 steps/min. (coded as
\code{medium}), and 28 steps/min. (coded as \code{fast}). This resulted in six
possible height/frequency
combinations. Each subject performed the activity for three minutes. Subjects
were kept on pace by the beat of an electric metronome. One experimenter
counted the subject's pulse for 20 seconds before and after each trial. The
subject always rested between trials until her or his heart rate returned to
close to the beginning rate. Another experimenter kept track of the time spent
stepping. Each subject was always measured and timed by the same pair of
experimenters to reduce variability in the experiment. Each pair of
experimenters was treated as a block.
}
\source{
These data are available at DASL, the data and story library (\url{http://lib.stat.cmu.edu/DASL/}).
}
\examples{
data(step)
xyplot(HR-restHR ~ freq, data=step, groups=height, type='a')
xyplot(HR-restHR ~ height, data=step, groups=freq, type='a')
}
\keyword{datasets}
