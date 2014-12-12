\name{moll1}
\alias{moll1}
\non_function{}

\title{Bacterial counts in mosquitoes}

\description{ 
  Bacterial counts in the meconium and lumen of three species of adult
  mosquitoes.
} 

\usage{data(moll1)}

\format{
  A data frame with six columns: specimen number, species, sex, age,
  location, and bacterial count.
}

%\details{
%}

\references{
  Moll, R. M., Romoser, W. S., Modrzakowski, M. C., Moncayo, A. C. and
  Lerdthusnee, K. (2001) Meconial peritrophic membranes and the fate of
  midgut bacteria during mosquito (diptera: culcidae) metamorphosis.
  \emph{J. Med. Entomol.} \bold{38}, 29--32. (See Table 1.)
}
  
\source{
  William Romoser, Ohio University
}

\examples{
data(moll1)
per <- tapply(moll1[,6],list(moll1[,2],moll1[,5]),function(a) mean(a>0))
me <- tapply(moll1[,6],list(moll1[,2],moll1[,5]),mean)
se <- tapply(moll1[,6],list(moll1[,2],moll1[,5]),sem)
}

\seealso{ \code{\link[labstat]{moll2}} }

\keyword{datasets}
