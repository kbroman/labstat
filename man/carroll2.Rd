\name{carroll2}
\alias{carroll2}
\non_function{}

\title{Ticks acquired while walking or crawling}

\description{
  Numbers of ticks acquired while walking or crawling.
}

\usage{data(carroll2)}

\format{
  A data frame with three columns: number of ticks and number of times
  (out of 50) that number was observed when walking and crawling.
}

%\details{
%}

\references{
  Carroll, J. F. and Kramer, M. (2001) Different activities and footwear
  influence exposure to host-seeking nymphs of \emph{Ixodes scapularis}
  and \emph{Amblyomma americanum}.
  \emph{J. Med. Entomol.} \bold{38}, 596--600. (See Figure 1a.)
}

\source{
  John F. Carroll, USDA
}

\examples{
data(carroll2)
# barplot
barplot(as.numeric(t(carroll2[,-1])), space=c(0,0,rep(c(1,0),7)),
        col=rep(c("white","black"),3),ylab="Number of samples",
        xlab="Number of nymphs per sample",ylim=c(0,40),
        xlim=c(-0.5,23.5))
abline(h=0)
segments((0:7)*3+1,0,(0:7)*3+1,-1,xpd=TRUE)
text((0:7)*3+1,-2.8,as.character(0:7),xpd=TRUE)
legend(15.5,40,c("walking","crawling"),pch=15,cex=1.3,
       col=c("white","black"))
legend(15.5,40,c("",""),pch=0,bty="n",cex=1.3)
}

\seealso{ \code{\link[labstat]{carroll1}}, \code{\link[labstat]{carroll3}} }

\keyword{datasets}
