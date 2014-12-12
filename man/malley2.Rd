\name{malley2}
\alias{malley2}
\non_function{}

\title{Effect of immunization on the pneumococci infection in mice}

\description{
  Number of mice colonized by pneumococci when challenged 2 weeks
  post-immunization, with adjuvant alone versus adjuvant with killed
  Rx1AL- immunogen.
}

\usage{data(malley2)}

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
data(malley2)
# Fisher's exact tests
x <- malley2
x[,2] <- x[,2]-x[,1]
fisher.test(x)
}

\seealso{ \code{\link[labstat]{malley1}},
  \code{\link[labstat]{malley3}} }

\keyword{datasets}
