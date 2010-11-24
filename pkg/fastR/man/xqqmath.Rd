\name{xqqmath}
\alias{xqqmath}
\title{ Augmented Q-Q plot with Theoretical Distribution }
\description{
Augmented version of \code{qqmath} from the \code{lattice} package
}
\usage{
	xqqmath(x, ...)
}
\arguments{
  \item{x}{ A numeric vector or formula. }
  \item{overlines}{boolean. If TRUE, place lines above the data, otherwise
  lines are below (default).
  }
  \item{idline}{boolean. If TRUE, add the line with slope 1 and intercept 0
  to the plot.
  }
  \item{qqmathline}{boolean.  
  	If TRUE, add a line using \code{panel.qqmathline}
	}
  \item{fitline}{boolean.  If TRUE, add a line to the plot, using
  slope and intercept given by \code{slope} and \code{intercept}.
  }
  \item{slope}{ slope for \code{fitline}.  
  Default value is the mean of the data, which works well
  for normal-quantile plots but may not be what you want for fitting
  other distributions. }
  \item{intercept}{ intercept for \code{fitline}.  
  	Default value is the standard deviation of the data, which works well
	for normal-quantile plots but may not be what you want for fitting
	other distributions. }
  \item{\dots}{ additional arguments passed along to \code{qqmath}. }
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
An object of class \code{trellis}. 
The \code{update} method can be used to update components of the 
object and the \code{print} method (usually called by default) 
will plot it on an appropriate plotting device.
}
\author{
Randall Pruim
}
%\note{
% %%  ~~further notes~~
%}


\seealso{ See also \code{\link{qqmath}}.  }

\examples{
xqqmath(rnorm(100),idline=TRUE)
x <- rexp(100,5)
xqqmath(x,dist=qexp,idline=TRUE,fitline=TRUE,slope=5,intercept=0)
}
\keyword{ graphics }
