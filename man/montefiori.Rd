\name{montefiori}
\alias{montefiori}
\non_function{}

\title{Virus production}

\description{ 
  Virus production in serum samples pre- and post-incubation with V3
  peptide or sterile PBS.  
} 

\usage{data(montefiori)}

\format{
  A data frame with three columns: sample identifier, bleed (pre/post),
  V3 peptide (no/yes), and virus production (in ng/ml).
}

%\details{
%}

\references{
  Montefiori, D. C., Safrit, J. T., Lydy, S. L., Barry, A. P., Bilska,
  M., Vo, H. T. T., Klein, M., Tartaglia, J., Robinson, H. L. and
  Rovinski, B. (2001) Induction of neutralizing antibodies and
  gag-specific cellular immune responses to an R5 primary isolate of
  Human Immunodeficiency Virus Type 1 in rhesus macaques.
  \emph{J. Virol.} \bold{75}, 5879--5890.  (See Figure 4.)
}
  
\source{
  David Montefiori, Duke University Medical Center
}

\examples{
data(montefiori)
me <- tapply(montefiori[,4],list(montefiori[,3],montefiori[,2],montefiori[,1]),mean)
se <- tapply(montefiori[,4],list(montefiori[,3],montefiori[,2],montefiori[,1]),sem)

# barplot
me <- as.numeric(me)
se <- as.numeric(se)
barplot(me, col=rep(c("black","gray80"),4), xlim=c(-0.5,11.5),space=c(0,0,1,0,1,0,1,0),
        names.arg=NULL,ylim=c(0,12),ylab="Virus production (ng/ml)")
abline(h=0)
legend(1.5,12,c("no V3 peptide","with V3 peptide"),pch=15,cex=1.15,
       col=c("black","gray80"))
legend(1.5,12,c("",""),pch=0,bty="n",cex=1.15)
x <- c(-0.5,2.5,5.5,8.5,11.5)
segments(x,0,x,-0.2,xpd=TRUE)
text(c(1,4,7,10),-0.6,c("RQj5 pre","RQj5 post","RYl5 pre","RYl5 post"),xpd=TRUE)
x <- c(0:1,3:4,6:7,9:10)+0.5
segments(x,me,x,me+se,lwd=2)
segments(x-0.1,me+se,x+0.1,me+se,lwd=2)
}

\seealso{ \code{\link[labstat]{sem}} }

\keyword{datasets}
