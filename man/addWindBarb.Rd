% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addWindBarb.R
\name{addWindBarb}
\alias{addWindBarb}
\title{Add wind barb to a map}
\usage{
addWindBarb(x, y, speed, dir, circleSize = 1,
  circleFill = "transparent", lineCol = 1, extraBarbLength = 0,
  barbSize = 1, ...)
}
\arguments{
\item{x}{longitude}

\item{y}{latitude}

\item{speed}{wind speed in knots}

\item{dir}{wind direction in degrees clockwise from north}

\item{circleSize}{size of the circle}

\item{circleFill}{circle fill color (currently not supported)}

\item{lineCol}{line color (currently not supported)}

\item{extraBarbLength}{add length to barbs}

\item{barbSize}{size of the barb}

\item{...}{additional arguments to be passed to \code{lines}}
}
\description{
Add a wind barb to the plot. Used internally in \link{addWindBarbs}
}
\references{
\url{https://commons.wikimedia.org/wiki/Wind_speed}
}
\keyword{internal}
