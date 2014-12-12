\name{moll2}
\alias{moll2}
\non_function{}

\title{Bacterial counts in mosquitoes}

\description{ 
  Bacterial counts at different developmental stages
  in three species of mosquitoes.
} 

\usage{data(moll2)}

\format{
  A data frame with four columns: species, developmental stage, specimen
  number, and bacterial count.
}

%\details{
%}

\references{
  Moll, R. M., Romoser, W. S., Modrzakowski, M. C., Moncayo, A. C. and
  Lerdthusnee, K. (2001) Meconial peritrophic membranes and the fate of
  midgut bacteria during mosquito (diptera: culcidae) metamorphosis.
  \emph{J. Med. Entomol.} \bold{38}, 29--32.  (See Table 2.)
}
  
\source{
  William Romoser, Ohio University
}

\examples{
data(moll2)
me <- tapply(moll2[,4],list(moll2[,2],moll2[,1]),mean)
se <- tapply(moll2[,4],list(moll2[,2],moll2[,1]),sem)
mn <- tapply(moll2[,4],list(moll2[,2],moll2[,1]),min)
mx <- tapply(moll2[,4],list(moll2[,2],moll2[,1]),max)
}

\seealso{ \code{\link[labstat]{moll1}} }

\keyword{datasets}
