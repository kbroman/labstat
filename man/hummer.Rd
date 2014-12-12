\name{hummer}
\alias{hummer}
\non_function{}

\title{Luciferase activity}

\description{ 
  Data on Luciferase activity in p53 +/+ and p53 -/- cells that are left
  untreated or in IFN, dsRNA, or SV medium.
} 

\usage{data(hummer)}

\format{
  A data frame with three columns: medium, p53 +/+ or -/-, and
  luceriferase activity.
}

%\details{
%}

\references{
  Hummer, B. T., Li, X.-L. and Hassel, B. A. (2001) Role for p53 in gene
  induction by double-stranded RNA.  \emph{J. Virol} \bold{75},
  7774-7777. (See Figure 4.)
}
  
\source{
  B. A. Hassel, University of Maryland
}

\examples{
data(hummer)
means <- tapply(hummer[,3],list(hummer[,2],hummer[,1]),mean)
sds <- tapply(hummer[,3],list(hummer[,2],hummer[,1]),sd)

# barplot
x1 <- as.numeric(means)
x2 <- as.numeric(sds)
par(las=1)
barplot(x1,ylim=c(0,125),col=rep(c("white","gray70"),4),
        names.arg=NULL,xlim=c(0,11),width=1,space=c(0,0,1,0,1,0,1,0))
abline(h=0)
text(c(1,4,7,10),-10,c("untrt","IFN","dsRNA","SV"),xpd=TRUE)
x <- c(0:1,3:4,6:7,9:10)+0.5
segments(x,x1,x,x1+x2,lwd=2)
segments(x-0.1,x1+x2,x+0.1,x1+x2,lwd=2)
u <- par("usr")
segments(c(u[1],2.5,5.5,8.5,u[2]),0,c(u[1],2.5,5.5,8.5,u[2]),-3,xpd=TRUE)
legend(0,120,c("p53 +/+", "p53 -/-"),col=c("white","gray70"),
       pch=15,cex=1.3)
legend(0,120,c("",""),pch=0,bty="n",cex=1.3)
}

\seealso{ \code{\link[labstat]{sem}} }

\keyword{datasets}
