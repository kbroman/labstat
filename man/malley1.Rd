\name{malley1}
\alias{malley1}
\non_function{}

\title{Effect of immunization on the pneumococci infection in mice}

\description{
  Number of mice colonized by pneumococci when challenged 2 weeks
  post-immunization, with several different immunogens (including a
  control), all without adjuvant.
}

\usage{data(malley1)}

\format{
  A data frame with two columns: number colonized and
  total number.
}

%\details{
%}

\references{
Malley, R., Lipsitch, M., Stack, A., Saladino, R., Fleisher, G., Pelton,
S., Thompson, C., Briles, D. and Anderson, P. (2001) Intranasal
immunization with killed unencapsulated whole cells prevents
colonization and invasive disease by capsulated pneumococci.
\emph{Infection and Immunity} \bold{69}:4870--4873. (See Table 1.)
}

%\source{
%}

\examples{
data(malley1)
# p-values by Fisher's exact tests
p <- 1:4
for(i in 1:4) {
  x <- malley1[c(1,i+1),]
  x[,2] <- x[,2]-x[,1]
  p[i] <- fisher.test(x)$p.value
}
round(p,3)
}

\seealso{ \code{\link[labstat]{malley2}},
  \code{\link[labstat]{malley3}} }

\keyword{datasets}
