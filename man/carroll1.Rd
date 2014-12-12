\name{carroll1}
\alias{carroll1}
\non_function{}

\title{Ticks acquired while walking with sneakers or boots.}

\description{
  Numbers of ticks acquired while walking with tick preventive (boots
  and tape) or nonpreventive (sneakers and minimal tape) footwear.
}

\usage{data(carroll1)}

\format{
  A data frame with three columns: number of ticks and number of times
  (out of ten) that number was observed with sneakers and boots.
}

%\details{
%}

\references{
  Carroll, J. F. and Kramer, M. (2001) Different activities and footwear
  influence exposure to host-seeking nymphs of \emph{Ixodes scapularis}
  and \emph{Amblyomma americanum}.
  \emph{J. Med. Entomol.} \bold{38}, 596--600. (See Figure 1b.)
}

\source{
  John F. Carroll, USDA
}

\examples{
data(carroll1)
# barplot
barplot(as.numeric(t(carroll1[,-1])), space=c(0,0,1,0,1,0),
        col=rep(c("white","black"),3),ylab="Number of samples",
        xlab="Number of nymphs per sample",ylim=c(0,10),
        xlim=c(-0.5,8.5))
abline(h=0)
segments(c(1,4,7),0,c(1,4,7),-0.25,xpd=TRUE)
text(c(1,4,7),-0.7,c("0","1","2"),xpd=TRUE)
legend(5.5,10,c("sneakers","boots"),pch=15,cex=1.3,
       col=c("white","black"))
legend(5.5,10,c("",""),pch=0,bty="n",cex=1.3)
}

\seealso{ \code{\link[labstat]{carroll2}}, \code{\link[labstat]{carroll3}} }

\keyword{datasets}
