% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blandr.data.preparation.r
\name{blandr.data.preparation}
\alias{blandr.data.preparation}
\title{Data preparation for method comparison analysis}
\usage{
blandr.data.preparation(method1, method2, sig.level)
}
\arguments{
\item{method1}{A list of numbers.}

\item{method2}{A list of numbers.}

\item{sig.level}{Significance level. Is not optional in this function, as the calling package should have a default value to pass if needed}
}
\value{
method.comparison A data frame of paired values. These have been data checked, and empty rows omitted, from the originally supplied data.
}
\description{
Prepares the data and runs error checks before the calling function runs whatever method analysis mode is wants.
}
\examples{
# Generates two random measurements
measurement1 <- rnorm(100)
measurement2 <- rnorm(100)

# Calls the function - do note that this function was really
# meant to be called from other functions and not a stand-alone funtion
blandr.data.preparation( measurement1 , measurement2, sig.level=0.95 )

}
\author{
Deepankar Datta \href{mailto:deepankar.datta@gmail.com}{deepankar.datta@gmail.com}
}
