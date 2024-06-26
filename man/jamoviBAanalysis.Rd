% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jamovibaanalysis.h.R
\name{jamoviBAanalysis}
\alias{jamoviBAanalysis}
\title{Bland-Altman Analysis}
\usage{
jamoviBAanalysis(
  data,
  method1,
  method2,
  ciDisplay = TRUE,
  ciShading = TRUE,
  plotProportionalBias = FALSE,
  plotProportionalBias.se = TRUE,
  overlapping = FALSE
)
}
\arguments{
\item{data}{.}

\item{method1}{.}

\item{method2}{.}

\item{ciDisplay}{.}

\item{ciShading}{.}

\item{plotProportionalBias}{.}

\item{plotProportionalBias.se}{.}

\item{overlapping}{.}
}
\value{
A results object containing:
\tabular{llllll}{
\code{results$table} \tab \tab \tab \tab \tab a table \cr
\code{results$plot} \tab \tab \tab \tab \tab an image \cr
}

Tables can be converted to data frames with \code{asDF} or \code{\link{as.data.frame}}. For example:

\code{results$table$asDF}

\code{as.data.frame(results$table)}
}
\description{
Bland-Altman Analysis
}
