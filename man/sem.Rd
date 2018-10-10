\name{sem}
\alias{sem}

\title{Standard error of the mean}

\description{
  Calculate the standard error of the mean (SEM) for a vector of numbers.
}

\usage{sem(x)}

\arguments{
 \item{x}{A vector of numbers.}
}

\value{
 The estimated standard error of the estimate of the mean of the population
 from which the numbers were drawn.
}

\details{
  The returned value is \eqn{s/\sqrt(n)}{s/sqrt(n)} where \emph{s} is
  the sample standard deviation (SD) and \emph{n} is the sample size.
  Missing values are discarded.
}

\author{Karl W Broman, \email{broman@wisc.edu} }

\examples{
x <- rnorm(100,10,2)
mean(x)
sem(x)
}

%\seealso{ }

\keyword{univar}
