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
  Currently ultrapolaRplot supports ultrasound tongue imaging trace data from
  UltraTrace (<https://github.com/SwatPhonLab/UltraTrace>). UltraTrace is
  capable of importing data from Articulate Instruments AAA.
}
\examples{
library(ultrapolaRplot)
filepath <- system.file("extdata", package = "ultrapolaRplot")
rawTraces <- loadTraces(filepath, categoriesAll = c("o", "i"))
polarTraces <- makeTracesPolar(rawTraces, origin.algorithm = "BottomMean")
plotTraces(rawTraces, polarTraces)
}
