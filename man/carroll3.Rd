\name{carroll3}
\alias{carroll3}
\non_function{}

\title{Counts of ticks seeking gland substances}

\description{ 
  Numbers of ticks going to a gland-substance-treated capillary tube
  versus an untreated tube. 
} 

\usage{data(carroll3)}

\format{
  A data frame with five columns: sex of tick, deer leg (fore/hind),
  deer sex, and numbers of ticks going to treated and untreated tubes. 
}

%\details{
%}

\references{
  Carroll, J. F. (2001) Interdigital gland substances of white-tailed
  deer and the response of host-seeking ticks (acari: ixodidae).
  \emph{J. Med. Entomol.} \bold{38}, 114--117. (See Table 1.)
}
  
\source{
  John F. Carroll, USDA
}

\examples{
data(carroll3)
# p-values for comparison of observed proportion to 50:50.
pval <- 1-pbinom(carroll3[,4],carroll3[,4]+carroll3[,5],0.5)
}

\seealso{ \code{\link[labstat]{carroll1}}, \code{\link[labstat]{carroll2}} }

\keyword{datasets}
