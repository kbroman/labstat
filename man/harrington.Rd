\name{harrington}
\alias{harrington}
\non_function{}

\title{Number of mosquitoes re-captured}

\description{
  Number of 13-day-old and 3-day-old recaptured near the site of release.
}

\usage{data(harrington)}

\format{
  A data frame with two columns: number of mosquitoes re-captured and
  the total number released.
}

%\details{
%}

\references{
Harrington, L. C., Buonaccorsi, J. P., Edman, J. D., Costero, A.,
Kittayapong, P., Clark, G. G. and Scott, T. W. (2001) Analysis of
survival of young and old \emph{Aedes aegypti} (diptera: culicidae) from
Puerto Rico and Thailand. \emph{J. Med. Entomol.} \bold{38}, 537-547.
(See Table 2.)
}

%\source{
%}

\examples{
data(harrington)
x <- harrington
x[,2] <- x[,2]-x[,1]
# Fisher's exact tests
fisher.test(x)
}


\keyword{datasets}
