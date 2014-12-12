\name{berrios}
\alias{berrios}
\non_function{}

\title{Cell surface adhesion receptor expression}

\description{ 
  Data on cell surface adhesion receptor expression in ATII cells (from
  rats) after 1, 4 and 7 days of culture.  
} 

\usage{data(berrios)}

\format{
  A data frame with three columns: days in culture, receptor molecule,
  and light intensity (a correlate of receptor expression).
}

%\details{
%}

\references{
  Berrios, J. C., Schroeder, M. A. and Hubmayr, R. D. (2001) Mechanical
  properties of alveolar epithelial cells in culture.
  \emph{J. Appl. Physiol.} \bold{91}, 65--73. (See Figure 2.)
}
  
\source{
  Rolf D. Hubmayr, Mayo Clinic and Foundation, Rochester, MN
}

\examples{
data(berrios)

# means and SEs
me <- tapply(berrios[,3], list(berrios[,2], berrios[,1]), mean, na.rm=TRUE)
se <- tapply(berrios[,3], list(berrios[,2], berrios[,1]), sem)
se <- se/me[,1]*100
me <- me/me[,1]*100
me <- as.numeric(t(me))[-6]
se <- as.numeric(t(se))[-6]

# barplot
par(las=1)
barplot(me, col=c("white","gray80","gray40","white","gray80"),
        names.arg=as.character(c(1,4,7,1,4)),
        ylim=c(0,250),xlim=c(0,5.5),width=1,space=c(0,0,0,0.5,0),
        ylab="Relative Light Intensity",xlab="Day")
abline(h=0)
x <- c(0.5,1.5,2.5,4,5)
segments(x,me,x,me+se,lwd=2)
segments(x-0.1,me+se,x+0.1,me+se,lwd=2)
text(1.5,225,"ICAM-1",cex=1.3,font=2)
text(4.5,225,"RGD-Peptide",cex=1.3,font=2)
}

\seealso{ \code{\link[labstat]{sem}} }

\keyword{datasets}
