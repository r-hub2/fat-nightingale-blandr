% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/blandr.plot.rplot.r
\name{blandr.plot.rplot}
\alias{blandr.plot.rplot}
\title{Bland-Altman plotting function, using basic R drawing functions}
\usage{
blandr.plot.rplot(
  statistics.results,
  plot.limits,
  method1name = "Method 1",
  method2name = "Method 2",
  plotTitle = "Bland-Altman plot for comparison of 2 methods",
  annotate = FALSE,
  ciDisplay = TRUE,
  ciShading = TRUE,
  normalLow = FALSE,
  normalHigh = FALSE,
  point_size = 0.8
)
}
\arguments{
\item{statistics.results}{A list of statistics generated by the blandr.statistics function: see the function's return list to see what variables are passed to this function}

\item{plot.limits}{A list of statistics generated by the blandr.plot.limits function to define the extent of the x- and y- axes: see the function's return list to see what variables are passed to this function}

\item{method1name}{(Optional) Plotting name for 1st method, default 'Method 1'}

\item{method2name}{(Optional) Plotting name for 2nd method, default 'Method 2'}

\item{plotTitle}{(Optional) Title name, default 'Bland-Altman plot for comparison of 2 methods'}

\item{annotate}{(Optional) TRUE/FALSE switch to provides annotations to plot, default=FALSE}

\item{ciDisplay}{(Optional) TRUE/FALSE switch to plot confidence intervals for bias and limits of agreement, default=TRUE}

\item{ciShading}{(Optional) TRUE/FALSE switch to plot confidence interval shading to plot, default=TRUE}

\item{normalLow}{(Optional) If there is a normal range, entering a continuous variable will plot a vertical line on the plot to indicate its lower boundary}

\item{normalHigh}{(Optional) If there is a normal range, entering a continuous variable will plot a vertical line on the plot to indicate its higher boundary}

\item{point_size}{(Optional) Size of marker for each dot. Default is cex=0.8}
}
\description{
Draws a Bland-Altman plot using data calculated using the other functions, using the in-built R graphics
}
\examples{
# Generates two random measurements
measurement1 <- rnorm(100)
measurement2 <- rnorm(100)

# Generates a basic plot
# Do note the blandr.plot.rplot function wasn't meant to be used on it's own
# and is generally called via the bland.altman.display.and.draw function

# Passes data to the blandr.statistics function to generate Bland-Altman statistics
statistics.results <- blandr.statistics( measurement1 , measurement2 )
# Passed data to the blandr.plot.limits function to generate plot limits
plot.limits <- blandr.plot.limits( statistics.results )

# Generates a basic plot, with no optional arguments
blandr.plot.rplot( statistics.results , plot.limits )

# Generates a basic plot, with title changed
blandr.plot.rplot( statistics.results , plot.limits , plotTitle = 'Bland-Altman example plot' )
# Generates a basic plot, with title changed, and confidence intervals off
blandr.plot.rplot( statistics.results , plot.limits , plotTitle = 'Bland-Altman example plot' ,
ciDisplay = FALSE , ciShading = FALSE )

}
\author{
Deepankar Datta \href{mailto:deepankar.datta@gmail.com}{deepankar.datta@gmail.com}
}
