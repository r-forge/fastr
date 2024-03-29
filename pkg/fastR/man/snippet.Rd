\name{snippet}
\alias{snippet}
\title{ Display or execute a snippet of R code }
\description{
This command will display and/or execute small snippets of R code
from the book \emph{Foundations and Applications of Statistics: An Introduction Using R}.
}
\usage{
	snippet(name, execute = TRUE, view = !execute, echo = TRUE, 
	ask = getOption("demo.ask"),
	verbose = getOption("verbose"),
	lib.loc = NULL, character.only = FALSE) 
}
\arguments{
  \item{name}{name of snippet}
  \item{lib.loc}{
   character vector of directory names of R libraries, or NULL. The default
   value of NULL corresponds to all libraries currently known.  }
  \item{character.only}{ 
  logical. If \code{TRUE}, use \code{name}as character string.  }
  \item{verbose}{
  a logical. If \code{TRUE}, additional diagnostics are printed.
}
  \item{echo}{
  a logical. If \code{TRUE}, show the R input when executing.
}
  \item{view}{a logical. If \code{TRUE}, snippet code is displayed 'as is'.  }
  \item{execute}{a logical.  If \code{TRUE}, snippet code is executed.  (The code 
  and the results of the execution will be visible if \code{echo} is \code{TRUE}.)
}
  \item{ask}{
  a logical (or "default") indicating if \code{devAskNewPage(ask=TRUE)} should
  be called before graphical output happens from the snippet code. The value
  "default" (the factory-fresh default) means to ask if \code{echo == TRUE} and the
  graphics device appears to be interactive. This parameter applies both to any
  currently opened device and to any devices opened by the demo code. If this
  is evaluated to \code{TRUE} and the session is interactive, the user is asked to
  press RETURN to start.
}
}
\details{
\code{snippet} works much like \code{\link{demo}}, but the interface is 
simplified.
}

\author{
Randall Pruim
}

\seealso{
\code{\link{demo}},
\code{\link{source}}.
}
\keyword{ utilities }
