% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotGraph.R
\name{plot.mcGP}
\alias{plot.mcGP}
\title{Visualize bi-objective graph.}
\usage{
\method{plot}{mcGP}(x, y = NULL, show.cluster.centers = TRUE, ...)
}
\arguments{
\item{x}{[\code{mcGP}]\cr
Multi-objective graph problem.}

\item{y}{Not used at the moment.}

\item{show.cluster.centers}{[\code{logical(1)}]\cr
Display cluster centers?
Default is \code{TRUE}. This option is ignored silently if the instance is not clustered.}

\item{...}{[any]\cr
Not used at the moment.}
}
\value{
[\code{list}] A list of \code{\link[ggplot2]{ggplot}} objects with components
\code{pl.weights} (scatterplot of edge weights) and eventually \code{pl.coords} (scatterplot of
nodes). The latter is \code{NULL}, if \code{graph} has no associated coordinates.
}
\description{
Only applicable for bi-objective problems of class \code{mcGP}.
\code{plot.mcGP} generates a scatterplot of edge weights. If the nodes do
have coordinates, additionally a scatterplot of the nodes in the euclidean
plane is generated.
}
