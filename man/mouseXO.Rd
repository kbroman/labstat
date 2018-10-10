\name{mouseXO}
\alias{mouseXO}
\non_function{}

\title{Numbers of crossovers in the mouse}

\description{
  Numbers of crossovers on each chromosome for each meiotic product from
  two inter-specific mouse backcrosses: (C57BL/6J x \emph{Mus spretus})
  x C57BL/6J and (C57BL/6J x SPRET/EiJ) x SPRET/EiJ.  Note that
  recombination is occuring in the female in each cross.
}

\usage{data(mouseXO)}

\format{
  A data frame with rows corresponding to meioses (there are 94 meioses
  for each backcross) and columns corresponding to the 20 chromosomes.
  There is also a column for the total number of crossovers,
  genome-wide, for each meiosis.
}

%\details{
%}

\references{
Broman, K. W., Rowe, L. R., Churchill, G. A. and Paigen, K. (2001)
Crossover interference in the mouse.  \emph{Genetics}, in press.
}

\source{
  Karl W Broman, \email{broman@wisc.edu}
}

\examples{
data(mouseXO)
total <- mouseXO[,ncol(mouseXO)]
cross <- rep(1:2,rep(94,2))
par(las=1)
boxplot(split(total,cross),names=c("BSB","BSS"),
        ylab="Total no. crossovers", xlab="Cross")
rug(total[cross==1]+runif(94,-0.1,0.1),side=2)
rug(total[cross==2]+runif(94,-0.1,0.1),side=4)
}

\seealso{ \code{\link[labstat]{humanXO}} }

\keyword{datasets}
