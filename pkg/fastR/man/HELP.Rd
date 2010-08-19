\name{HELP}
\alias{HELP}
\docType{data}
\title{HELP -- Health Evaluation and Linkage to Primary Care}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(HELP)}
\format{
  A data frame with 453 observations on the following 88 variables.
  \describe{
    \item{\code{id}}{a numeric vector}
    \item{\code{e2b1}}{a numeric vector}
    \item{\code{g1b1}}{a numeric vector}
    \item{\code{i11}}{a numeric vector}
    \item{\code{pcs1}}{a numeric vector}
    \item{\code{mcs1}}{a numeric vector}
    \item{\code{cesd1}}{a numeric vector}
    \item{\code{indtot1}}{a numeric vector}
    \item{\code{drugrisk1}}{a numeric vector}
    \item{\code{sexrisk1}}{a numeric vector}
    \item{\code{pcrec1}}{a numeric vector}
    \item{\code{e2b2}}{a numeric vector}
    \item{\code{g1b2}}{a numeric vector}
    \item{\code{i12}}{a numeric vector}
    \item{\code{pcs2}}{a numeric vector}
    \item{\code{mcs2}}{a numeric vector}
    \item{\code{cesd2}}{a numeric vector}
    \item{\code{indtot2}}{a numeric vector}
    \item{\code{drugrisk2}}{a numeric vector}
    \item{\code{sexrisk2}}{a numeric vector}
    \item{\code{pcrec2}}{a numeric vector}
    \item{\code{e2b3}}{a numeric vector}
    \item{\code{g1b3}}{a numeric vector}
    \item{\code{i13}}{a numeric vector}
    \item{\code{pcs3}}{a numeric vector}
    \item{\code{mcs3}}{a numeric vector}
    \item{\code{cesd3}}{a numeric vector}
    \item{\code{indtot3}}{a numeric vector}
    \item{\code{drugrisk3}}{a numeric vector}
    \item{\code{sexrisk3}}{a numeric vector}
    \item{\code{pcrec3}}{a numeric vector}
    \item{\code{e2b4}}{a numeric vector}
    \item{\code{g1b4}}{a numeric vector}
    \item{\code{i14}}{a numeric vector}
    \item{\code{pcs4}}{a numeric vector}
    \item{\code{mcs4}}{a numeric vector}
    \item{\code{cesd4}}{a numeric vector}
    \item{\code{indtot4}}{a numeric vector}
    \item{\code{drugrisk4}}{a numeric vector}
    \item{\code{sexrisk4}}{a numeric vector}
    \item{\code{pcrec4}}{a numeric vector}
    \item{\code{a15a}}{a numeric vector}
    \item{\code{a15b}}{a numeric vector}
    \item{\code{d1}}{a numeric vector}
    \item{\code{e2b}}{a numeric vector}
    \item{\code{f1a}}{a numeric vector}
    \item{\code{f1b}}{a numeric vector}
    \item{\code{f1c}}{a numeric vector}
    \item{\code{f1d}}{a numeric vector}
    \item{\code{f1e}}{a numeric vector}
    \item{\code{f1f}}{a numeric vector}
    \item{\code{f1g}}{a numeric vector}
    \item{\code{f1h}}{a numeric vector}
    \item{\code{f1i}}{a numeric vector}
    \item{\code{f1j}}{a numeric vector}
    \item{\code{f1k}}{a numeric vector}
    \item{\code{f1l}}{a numeric vector}
    \item{\code{f1m}}{a numeric vector}
    \item{\code{f1n}}{a numeric vector}
    \item{\code{f1o}}{a numeric vector}
    \item{\code{f1p}}{a numeric vector}
    \item{\code{f1q}}{a numeric vector}
    \item{\code{f1r}}{a numeric vector}
    \item{\code{f1s}}{a numeric vector}
    \item{\code{f1t}}{a numeric vector}
    \item{\code{g1b}}{a numeric vector}
    \item{\code{i1}}{a numeric vector}
    \item{\code{i2}}{a numeric vector}
    \item{\code{age}}{a numeric vector}
    \item{\code{treat}}{a numeric vector}
    \item{\code{homeless}}{a numeric vector}
    \item{\code{pcs}}{a numeric vector}
    \item{\code{mcs}}{a numeric vector}
    \item{\code{cesd}}{a numeric vector}
    \item{\code{indtot}}{a numeric vector}
    \item{\code{pss_fr}}{a numeric vector}
    \item{\code{drugrisk}}{a numeric vector}
    \item{\code{sexrisk}}{a numeric vector}
    \item{\code{satreat}}{a numeric vector}
    \item{\code{drinkstatus}}{a numeric vector}
    \item{\code{daysdrink}}{a numeric vector}
    \item{\code{anysubstatus}}{a numeric vector}
    \item{\code{daysanysub}}{a numeric vector}
    \item{\code{linkstatus}}{a numeric vector}
    \item{\code{dayslink}}{a numeric vector}
    \item{\code{female}}{a numeric vector}
    \item{\code{substance}}{a factor with levels \code{alcohol} \code{cocaine} \code{heroin}}
    \item{\code{racegrp}}{a factor with levels \code{black} \code{hispanic} \code{other} \code{white}}
  }
}
\details{
The HELP (Health Evaluation and Linkage to Primary Care) study was a clinical
trial for adult inpatients recruited from a detoxification unit. Patients with
no primary care physician were randomized to receive a multidisciplinary
assessment and a brief motivational intervention or usual care, with the goal
of linking them to primary medical care. The Institutional Review Board of
Boston University Medical Center approved all aspects of the study, including
the creation of the de-identified dataset available in this data frame. Variables
included in the HELP dataset are described in Table C.2 (p. 279) of
\cite{SAS and R: Data Management, Statistical Analysis, and Graphics}
by Kleinman and Horton.
}
\source{\url{http://www.math.smith.edu/sasr/datasets.php}}
\references{
Kleinman, K. and Horton, N.J. (2009)
\cite{SAS and R: Data Management, Statistical Analysis, and Graphics},
Chapman & Hall.
}
\examples{
data(HELP)
}
\keyword{datasets}
