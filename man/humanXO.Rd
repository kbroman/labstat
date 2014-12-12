\name{humanXO}
\alias{humanXO}
\non_function{}

\title{Numbers of crossovers in human}

\description{ 
  Numbers of crossovers on each chromosome for each meiosis in eight
  CEPH families.  
}

\usage{data(humanXO)}

\format{
  A data frame with rows corresponding to meioses (there are 184
  total).  The first three columns indicate the family and individual
  identifiers, and whether the row corresponds to the male or female
  meiosis.  The following columns give the number of crossovers on each
  of the 23 chromosomes and then the total number of crossovers,
  genome-wide. 
}

%\details{
%}

\references{
Broman, K. W., Murray, J. C., Sheffield, V. C., White, R. L., Weber,
J. L. (1998) Comprehensive human genetic maps: Individual and
sex-specific variation in recombination. \emph{Am J Hum Genet}
\bold{63}, 861--869. (See Figure 3 and Table 2.)
}
  
\source{
  Karl W Broman, Johns Hopkins University, \email{kbroman@jhsph.edu}
}

\examples{
data(humanXO)
# maternal
total <- humanXO$total[humanXO$Par=="ma"]
fam <- factor(humanXO$Fam[humanXO$Par=="ma"],levels=unique(humanXO$Fam))
x <- 9-as.numeric(fam)
plot(total,x+runif(length(x),-0.15,0.15),yaxt="n",
     xlab="Total no. crossovers",ylab="Family",
     main="Female meioses")
u <- par("usr")
segments(u[1],1:8,u[1]-diff(u[1:2])*0.02,1:8,xpd=TRUE)
text(u[1]-diff(u[1:2])*0.03,9-(1:8),as.character(levels(fam)),xpd=TRUE,adj=1)
abline(h=1:8,lty=3)

# male meioses
total <- humanXO$total[humanXO$Par=="pa"]
fam <- factor(humanXO$Fam[humanXO$Par=="pa"],levels=unique(humanXO$Fam))
x <- 9-as.numeric(fam)
plot(total,x+runif(length(x),-0.15,0.15),yaxt="n",
     xlab="Total no. crossovers",ylab="Family",
     main="Male meioses")
u <- par("usr")
segments(u[1],1:8,u[1]-diff(u[1:2])*0.02,1:8,xpd=TRUE)
text(u[1]-diff(u[1:2])*0.03,9-(1:8),as.character(levels(fam)),xpd=TRUE,adj=1)
abline(h=1:8,lty=3)
}

\seealso{ \code{\link[labstat]{mouseXO}} }

\keyword{datasets}
