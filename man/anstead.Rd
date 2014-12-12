\name{anstead}
\alias{anstead}
\non_function{}

\title{Percent visceralization}

\description{
  Percent visceralization in the spleen and liver of mice given four
  different diets.
}

\usage{data(anstead)}

\format{
  A data frame with four columns: type of diet, organ, number of mice
  showing visceralization, and total number of mice.
}

%\details{
%}

\references{
Anstead, G. M., Chandrasekar, B., Zhao, W., Yang, J., Perez, L. E. and
Melby, P. C. (2001) Malnutrition alters the inate immune response and
increases early visceralization following \emph{Leismania donovani}
infection.  \emph{Infection and Immunity} \bold{69}, 4709-4718. (See
Figure 1B.)
}

%\source{
%}

\examples{
data(anstead)
p <- anstead[,3]/anstead[,4]*100
par(las=1)
barplot(p,width=1,space=c(0,0,rep(c(1,0),3)),xlab="Diet",ylab="Percent visceralization",
        ylim=c(0,100),col=c("black","gray"),xlim=c(-0.5,11.5))
abline(h=0)
x <- c(-0.5,2.5,5.5,8.5,11.5)
segments(x,0,x,-2,xpd=TRUE)
x <- c(1,4,7,10)
text(x,-6,c("A","B","C","D"),xpd=TRUE)
legend(0,100,c("Spleen","Liver"),pch=15,cex=1.15,
       col=c("black","gray"))
legend(0,100,c("",""),pch=0,bty="n",cex=1.15)
}

\keyword{datasets}
