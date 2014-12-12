\name{huber2}
\alias{huber2}
\non_function{}

\title{Myocarditis in mice}

\description{ 
  Data on myocarditis in antibody-treated mice that are further infected with H3
  or H310A1 viruses or left uninfected.
} 

\usage{data(huber2)}

\format{
  A data frame with three columns: antibody treatment, infection status,
  and percent myocarditis.
}

%\details{
%}

\references{
  Huber, S. A., Graveline, D., Born, W. K. and O'Brien, R. L. (2001)
  Cytokine production by V\eqn{\gamma}{gamma}+-T-cell subsets is an
  important factor determining CD4+-Th-cell phenotype and susceptibility
  of BALB/c mice to coxsackievirus B3-induced myocarditus.
  \emph{J. Virol.} \bold{75}, 5860--5769.  (See Figure 4.)
}
  
\source{
  Sally Huber, Department of Pathology, University of Vermont
}

\examples{
data(huber2)
means <- tapply(huber2[,3],list(huber2[,1],huber2[,2]),mean)
sds <- tapply(huber2[,3],list(huber2[,1],huber2[,2]),sd)

# barplot
x1 <- as.numeric(means)
x2 <- as.numeric(sds)
par(las=1)
barplot(x1,ylim=c(0,18),col=rep(c("white","black","gray70"),3),
        names.arg=NULL,xlim=c(0,11),width=1,space=c(0,0,0,1,0,0,1,0,0))
abline(h=0)
text(1.5,-1,"Uninfected",xpd=TRUE)
text(5.5,-1,"H3-Infected",xpd=TRUE)
text(9.5,-1,"H310A1-Infected",xpd=TRUE)
x <- c(0:2,4:6,8:10)+0.5
segments(x,x1,x,x1+x2,lwd=2)
segments(x-0.1,x1+x2,x+0.1,x1+x2,lwd=2)
legend(6.5,17,c("Hamster-IgG","Anti-Vg1","Anti-Vg4"),col=c("white","black","gray70"),
       pch=15,cex=1.3)
legend(6.5,17,c("","",""),pch=0,bty="n",cex=1.3)
u <- par("usr")
x <- c(u[1],3.5,7.5,u[2])
segments(x,0,x,-0.5,xpd=TRUE)
}

\seealso{ \code{\link[labstat]{huber1}} }

\keyword{datasets}
