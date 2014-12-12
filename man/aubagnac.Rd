\name{aubagnac}
\alias{aubagnac}
\non_function{}

\title{Amount of viral RNA}

\description{
  Amount of viral RNA in the central nervous systems of mice with three
  different genotypes at 6, 21 and 45 days after infection with
  Theiler's virus.
}

\usage{data(aubagnac)}

\format{
  A data frame with four columns: mouse strain (genotype), days post
  infection, and amount of viral RNA in spinal cord and brain.
}

%\details{
%}

\references{
Aubagnac, S., Brahic, M. and Bureau, J.-F. (2001) Viral load increases
in SJL/J mice persistently infected by Theiler's virus after
inactivation of the \eqn{\beta_2m}{B2m} gene.  \emph{J. Virol.}
\bold{75}, 7723-7726. (See Figure 1.)
}

\source{
Jean-Francois Bureau, Institut Pasteur, France
}

\examples{
data(aubagnac)
me.s <- tapply(aubagnac[,3],list(aubagnac[,1],aubagnac[,2]),mean,na.rm=TRUE)
me.b <- tapply(aubagnac[,4],list(aubagnac[,1],aubagnac[,2]),mean,na.rm=TRUE)
se.s <- tapply(aubagnac[,3],list(aubagnac[,1],aubagnac[,2]),sem)
se.b <- tapply(aubagnac[,4],list(aubagnac[,1],aubagnac[,2]),sem)

# barplots
par(mfrow=c(3,1),las=1)
# day 6
me <- as.numeric(rbind(me.s[,1],me.b[,1]))
se <- as.numeric(rbind(se.s[,1],se.b[,1]))
barplot(me,width=1,space=c(0,0,rep(c(1,0),2)),xlab="Mouse Group",
        ylab="Amount of viral RNA (score)", ylim=c(0,4),xlim=c(-0.5,8.5),
        col=c("white","black"),main="6 days post-infection")
abline(h=0)
x <- c(-0.5,2.5,5.5,8.5)
segments(x,0,x,-0.1,xpd=TRUE)
text(c(1,4,7),-0.3,as.character(levels(aubagnac[,1])),xpd=TRUE)
legend(-0.5,4,c("Spinal cord","Brain"),pch=15,cex=1.15,
       col=c("white","black"))
legend(-0.5,4,c("",""),pch=0,bty="n",cex=1.15)
x <- c(0:1,3:4,6:7)+0.5
segments(x,me,x,me+se,lwd=2)
segments(x-0.1,me+se,x+0.1,me+se,lwd=2)

# day 21
me <- as.numeric(rbind(me.s[,2],me.b[,2]))
se <- as.numeric(rbind(se.s[,2],se.b[,2]))
barplot(me,width=1,space=c(0,0,rep(c(1,0),2)),xlab="Mouse Group",
        ylab="Amount of viral RNA (score)", ylim=c(0,4),xlim=c(-0.5,8.5),
        col=c("white","black"),main="21 days post-infection")
abline(h=0)
x <- c(-0.5,2.5,5.5,8.5)
segments(x,0,x,-0.1,xpd=TRUE)
text(c(1,4,7),-0.3,as.character(levels(aubagnac[,1])),xpd=TRUE)
x <- c(0:1,3:4,6:7)+0.5
segments(x,me,x,me+se,lwd=2)
segments(x-0.1,me+se,x+0.1,me+se,lwd=2)

# day 45
me <- me.s[,3];names(me) <- NULL
se <- se.s[,3]
barplot(me,width=1,space=c(0,1,1),xlab="Mouse Group",
        ylab="Amount of viral RNA (score)", ylim=c(0,4),xlim=c(-0.5,5.5),
        col="white",main="45 days post-infection")
abline(h=0)
x <- c(-0.5,1.5,3.5,5.5)
segments(x,0,x,-0.1,xpd=TRUE)
x <- c(0,2,4)+0.5
text(x,-0.3,as.character(levels(aubagnac[,1])),xpd=TRUE)
segments(x,me,x,me+se,lwd=2)
segments(x-0.1,me+se,x+0.1,me+se,lwd=2)
}

\keyword{datasets}
