\name{malley3}
\alias{malley3}
\non_function{}

\title{Effect of immunization on the pneumococci infection in rats}

\description{
  Number of rats colonized by pneumococci post-immunization, with
  adjuvant alone versus adjuvant and killed Rx1AL- immunogen.
}

\usage{data(malley3)}

\format{
  A data frame with four columns: replicate (A/B), number of ill rats,
  number of dead rats, and total number of rats.
}

%\details{
%}

\references{
Malley, R., Lipsitch, M., Stack, A., Saladino, R., Fleisher, G., Pelton,
S., Thompson, C., Briles, D. and Anderson, P. (2001) Intranasal
immunization with killed unencapsulated whole cells prevents
colonization and invasive disease by capsulated pneumococci.
\emph{Infection and Immunity} \bold{69}:4870--4873. (See Table 2.)
}

%\source{
%}

\examples{
data(malley3)
# p-values by Fisher's exact tests
p <- 1:4
# repl A; ill
x <- malley3[1:2,c(2,4)]
x[,2] <- x[,2]-x[,1]
p[1] <- fisher.test(x)$p.value
# repl A; dead
x <- malley3[1:2,c(3,4)]
x[,2] <- x[,2]-x[,1]
p[2] <- fisher.test(x)$p.value
# repl B; ill
x <- malley3[3:4,c(2,4)]
x[,2] <- x[,2]-x[,1]
p[3] <- fisher.test(x)$p.value
# repl B; dead
x <- malley3[3:4,c(3,4)]
x[,2] <- x[,2]-x[,1]
p[4] <- fisher.test(x)$p.value
}

\seealso{ \code{\link[labstat]{malley1}},
  \code{\link[labstat]{malley2}} }

\keyword{datasets}
