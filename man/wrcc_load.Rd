% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrcc_load.R
\name{wrcc_load}
\alias{wrcc_load}
\title{Load Processed WRCC Monitoring Data}
\usage{
wrcc_load(year = 2017,
  baseUrl = "https://haze.airfire.org/monitoring/WRCC/RData/")
}
\arguments{
\item{year}{desired year (integer or character representing YYYY)}

\item{baseUrl}{base URL for WRCC meta and data files}
}
\value{
A \emph{ws_monitor} object with WRCC data.
}
\description{
Please use \code{\link{wrcc_loadAnnual}} instead of this
function. It will soon be deprecated.
}
\keyword{WRCC}
