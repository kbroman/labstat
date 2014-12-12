\name{mathura2}
\alias{mathura2}
\non_function{}

\title{RBC velocity and capillary diameter by OPS imaging}

\description{ 
  Estimated red blood cell velocity and capillary diameter at rest and
  during venous occlusion, obtained by OPS imaging.
} 

\usage{data(mathura2)}

\format{
  A data frame with four columns: estimated RBC velocity at rest and
  during venous occlusion, followed by estimated capillary diameter at
  rest and during venous occlusion.
}

%\details{
%}

\references{
  Mathura, K. R., Vollebregt, K. C., Boer, K., De Graaff, J. C., Ubbink,
  D. T. and Ince, C. (2001) Comparison of OPS imaging and conventional
  capillary microscopy to study the human
  microcirculation. \emph{J. Appl. Physiol.} \bold{91}, 74--78. (See
  Figures 1 and 4.)
}
  
\source{
  Can Ince, University of Amsterdam.
}

\examples{
data(mathura1)
data(mathura2)

par(las=1,mfrow=c(2,1))
boxplot(mathura1[,1],mathura1[,2],mathura2[,1],mathura2[,2],ylim=c(0,1.6),
        names=c("RBCVr","RBCVvo","RBCVr","RBCVvo"),ylab="RBC velocity (mm/s)")
abline(v=2.5,lty=3)
u <- par("usr")
text(c(1.5,3.5),u[4]+diff(u[3:4])*0.10,c("Capillaroscopy","OPS Imaging"),
     cex=1.3,xpd=TRUE)

boxplot(mathura1[,3],mathura1[,4],mathura2[,3],mathura2[,4],ylim=c(0,20),
        names=c("RBCVr","RBCVvo","RBCVr","RBCVvo"),
        ylab=expression(paste("diameter (", mu, "m)")))
abline(v=2.5,lty=3)
u <- par("usr")
text(c(1.5,3.5),u[4]+diff(u[3:4])*0.10,c("Capillaroscopy","OPS Imaging"),
     cex=1.3,xpd=TRUE)
}

\seealso{ \code{\link[labstat]{mathura1}} }

\keyword{datasets}
