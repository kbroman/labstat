\name{ramsey}
\alias{ramsey}
\non_function{}

\title{Hydrosalpinx formation}

\description{
  Hydrosalpinx formation in three strains of mice when infected or not
  with \emph{Chlamydia trachomatis}.
}

\usage{data(ramsey)}

\format{
  A data frame with two columns: number of mice displaying hydrosalpinx
  formation, and total number of mice.
}

%\details{
%}

\references{
Ramsey, K. H., Miranpuri, G. S., Sigar, I. M., Ouellette, S. and Byrne,
G. I. (2001) \emph{Chlamydia trachomatis} persistence in the female
mouse genital tract: Inducible nitric oxide synthase and infection
outcome.  \emph{Infection and Immunity} \bold{69}, 5131-5137. (See Table
1.)
}

%\source{
%}

\examples{
data(ramsey)
x <- ramsey
x[,2] <- x[,2]-x[,1]
# Fisher's exact tests
fisher.test(x[-3,])
fisher.test(x[-2,])
}

\keyword{datasets}
