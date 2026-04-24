\name{ultrapolaRplot}
\alias{ultrapolaRplot}
\title{ultrapolaRplot}
\description{
  The ultrapolaRplot library for R is designed for plotting traced 
  ultrasound tongue imaging data according to a polar coordinate system.
  There is currently support for plotting means and standard deviations of 
  each category's trace; SSANOVA could be implemented as well. The origin 
  of the polar coordinates may be defined manually or automatically
  determined based on different algorithms.
  Points for each category can be split into two groups (anterior and 
  posterior) at the point of maximum curvature of each trace. User can 
  specify rays to intersect various parts of the tongue; intersections along 
  these rays serve as input for a pairwise t-test to measure significant 
  contrasts between segments. 
  Currently ultrapolaRplot supports ultrasound tongue imaging trace data from
  UltraTrace (<https://github.com/SwatPhonLab/UltraTrace>). UltraTrace is
  capable of importing data from Articulate Instruments AAA.
}
\examples{
  \dontrun{
  library(ultrapolaRplot)
  filepath <- system.file("extdata", package = "ultrapolaRplot")
  rawTraces <- loadAllTracesMidPoint(filepath)
  filteredTraces <- plotTraces(rawTraces, 
  categoriesAll = c("o", "i"), bestFitRays = TRUE,
  bestFitRays.intersection_rays.positive = c(0.5))
  }
}
