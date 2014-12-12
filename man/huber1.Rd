\name{huber1}
\alias{huber1}
\non_function{}

\title{Myocarditis in mice}

\description{ 
  Data on myocarditis in mice that are infected with H3
  or H310A1 viruses or left uninfected.
} 

\usage{data(huber1)}

\format{
  A data frame with seven columns: treatment, percent mycardium
  inflamed, virus titer (log10 PFU), total number of lymphoctyes
  (/\eqn{10^6}), percent of CD4+ cells in spleen, percent of CD4+ cells
  that are IFN-\eqn{\gamma}{gamma}+ and that are IL-4+.
}

%\details{
%}

\references{
  Huber, S. A., Graveline, D., Born, W. K. and O'Brien, R. L. (2001)
  Cytokine production by V\eqn{\gamma}{gamma}+-T-cell subsets is an
  important factor determining CD4+-Th-cell phenotype and susceptibility
  of BALB/c mice to coxsackievirus B3-induced
  myocarditus. \emph{J. Virol.} \bold{75}, 5860--5769. (See Table 1.)
}
  
\source{
  Sally Huber, Department of Pathology, University of Vermont
}

\examples{
data(huber1)

# means
means <- matrix(ncol=6,nrow=3)
for(i in 1:6)
  means[,i] <- tapply(huber1[,i+1],huber1[,1],mean,na.rm=TRUE)

# SDs
sds <- means
for(i in 1:6)
  sds[,i] <- tapply(huber1[,i+1],huber1[,1],sd,na.rm=TRUE)

dimnames(means) <- dimnames(sds) <-
    list(levels(huber1[,1]),colnames(huber1)[-1])

round(means,2)
round(sds,2)
}

\seealso{ \code{\link[labstat]{huber2}} }

\keyword{datasets}
