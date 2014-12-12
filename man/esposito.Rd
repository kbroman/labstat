\name{esposito}
\alias{esposito}
\non_function{}

\title{Humoral response to pertussis antigen}

\description{
  Humoral response to pertussis antigen in vaccinated children and
  children with a history of pertussis infection.
}

\usage{data(esposito)}

\format{
  A data frame with six columns: number of children that are PT, FHA,
  and PRN positive and negative.
}

%\details{
%}

\references{
  Esposito, S., Agliardi, T., Giammanco, A., Faldella, G., Cascio, A.,
  Bosis, S., Friscia, O., Clerici, M. and Principi, N. (2001) Long-term
  pertussis-specific immunity after primary vaccination with a combined
  diphtheria, tetanus, tricomponent acellular pertussis and hepatitis B
  vaccine in comparison with that after natural infection.
  \emph{Infection and Immunity} \bold{69}, 4516--4520. (See Table 1.)
}

%\source{
%}

\examples{
data(esposito)
# Fisher's exact tests
fisher.test(esposito[,1:2]) # PT
fisher.test(esposito[,3:4]) # FHA
fisher.test(esposito[,5:6]) # PRN
}


\keyword{datasets}
