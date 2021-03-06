% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/airsis_createMetaDataframe.R
\name{airsis_createMetaDataframe}
\alias{airsis_createMetaDataframe}
\title{Create AIRSIS site location metadata dataframe}
\usage{
airsis_createMetaDataframe(tbl, provider = as.character(NA),
  unitID = as.character(NA), pwfslDataIngestSource = "AIRSIS",
  existingMeta = NULL, addGoogleMeta = FALSE, addEsriMeta = FALSE)
}
\arguments{
\item{tbl}{single site AIRSIS tibble after metadata enhancement}

\item{provider}{identifier used to modify baseURL \code{['APCD'|'USFS']}}

\item{unitID}{character or numeric AIRSIS unit identifier}

\item{pwfslDataIngestSource}{identifier for the source of monitoring data, e.g. \code{'AIRSIS'}}

\item{existingMeta}{existing 'meta' dataframe from which to obtain metadata for known monitor deployments}

\item{addGoogleMeta}{logicial specifying wheter to use Google elevation and reverse geocoding services}

\item{addEsriMeta}{logicial specifying wheter to use ESRI elevation and reverse geocoding services}
}
\value{
A \code{meta} dataframe for use in a \emph{ws_monitor} object.
}
\description{
After an AIRSIS tibble has been enhanced with
additional columns generated by \code{addClustering} we are ready to
pull out site information associated with unique deployments.

These will be rearranged into a dataframe organized as deployment-by-property
with one row for each monitor deployment.

This site information found in \code{tbl} is augmented so that we end up with a uniform
set of properties associated with each monitor deployment. The list of
columns in the returned \code{meta} dataframe is:

\preformatted{
> names(p$meta)
 [1] "monitorID"             "longitude"             "latitude"
 [4] "elevation"             "timezone"              "countryCode"
 [7] "stateCode"             "siteName"              "agencyName"
[10] "countyName"            "msaName"               "monitorType"
[13] "monitorInstrument"     "aqsID"                 "pwfslID"
[16] "pwfslDataIngestSource" "telemetryAggregator"   "telemetryUnitID"
}
}
\seealso{
\code{\link{addMazamaMetadata}}
}
\keyword{AIRSIS}
