% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addMazamaMetadata.R
\name{addMazamaMetadata}
\alias{addMazamaMetadata}
\title{Add State, Country and Timezone to a Dataframe}
\usage{
addMazamaMetadata(df, lonVar = "longitude", latVar = "latitude",
  existingMeta = NULL, countryCodes = c("CA", "US", "MX"))
}
\arguments{
\item{df}{dataframe or tibble with geolocation information (\emph{e.g.} created by \code{wrcc_qualityControl()} or \code{airsis_qualityControl})}

\item{lonVar}{name of longitude variable in the incoming dataframe}

\item{latVar}{name of the latitude variable in the incoming dataframe}

\item{existingMeta}{existing 'meta' dataframe from which to obtain metadata for known monitor deployments}

\item{countryCodes}{vector of countryCodes (use \code{NULL} for global searches)}
}
\value{
Input dataframe with additional columns: \code{timezone, countryCode, stateCode}.
}
\description{
The \pkg{MazamaSpatialUtils} package used to determine the ISO state and country code,
and the Olson timezone associated with the locations specified by the
\code{longitude} and \code{latitude} columns of the incoming dataframe.

This function requires previous setup of the \pkg{MazamaSpatialUtils} package with \code{initializeMazamaSpatialUtils()}.
}
\references{
\url{https://github.com/MazamaScience/MazamaSpatialUtils}
}
\seealso{
\code{\link{initializeMazamaSpatialUtils}}
}
\keyword{internal}
