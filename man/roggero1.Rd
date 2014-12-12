\name{roggero1}
\alias{roggero1}
\non_function{}

\title{Percent apopototic cells}

\description{ 
  Percent apoptotic cells in the HEK/CD4.403/CXCR4 cell line after
  coculture with CEM cells or 8.E5 cells.
} 

\usage{data(roggero1)}

\format{
  A data frame with two columns: type of cells in coculture and percent
  apopototic cells.
}

%\details{
%}

\references{
Roggero, R., Robert-Hebmann, V., Harrington, S., Roland, J., Vergne, L.,
Jaleco, S., Devaux, C. and Biard-Piechaczyk, M. (2001) \emph{J. Virol.}
\bold{75}, 7637-7650.  (See Figure 1C.)
}
  
\source{
  Martine Biard-Piechaczyk, Institut de Biologie, Montpellier, France
}

\examples{
data(roggero1)
data(roggero2)
me <- c(tapply(roggero1[,2],roggero1[,1],mean),
        tapply(roggero2[,2],roggero2[,1],mean))
se <- c(tapply(roggero1[,2],roggero1[,1],sem),
        tapply(roggero2[,2],roggero2[,1],sem))
par(las=1)
barplot(me,xlab="",ylab="Percent apoptotic cells",width=1,ylim=c(0,20),
        xlim=c(-0.5,5.5),space=c(0,0,1,0),col=rep(c("white","gray"),2))
abline(h=0)
abline(v=2.5,lty=3)
text(1,19,"HEK/CD4.403/CXCR4",cex=1.3,xpd=TRUE)
text(4,19,"A2.01/CD4.403",cex=1.3,xpd=TRUE)
x <- c(0,1,3,4)+0.5
segments(x,me,x,me+se,lwd=2)
segments(x-0.1,me+se,x+0.1,me+se,lwd=2)
}

\seealso{ \code{\link[labstat]{roggero2}} }

\keyword{datasets}
