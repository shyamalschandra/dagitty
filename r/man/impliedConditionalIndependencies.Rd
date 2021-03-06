% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dagitty.r
\name{impliedConditionalIndependencies}
\alias{impliedConditionalIndependencies}
\title{List Implied Conditional Independencies}
\usage{
impliedConditionalIndependencies(x, type = "missing.edge",
  max.results = Inf)
}
\arguments{
\item{x}{the input graph, a DAG, MAG, or PDAG.}

\item{type}{can be one of "missing.edge" or "basis.set". With the former, one testable 
implication is returned per missing edge of the graph. With the latter, one testable
implication is returned per vertex of the graph that has non-descendants other than
its parents. Basis sets can be smaller, but they involve higher-dimensional independencies,
whereas missing edge sets involve only bivariate independencies.}

\item{max.results}{integer. The listing of conditional independencies is stopped once
this many results have been found. Use \code{Inf} to generate them all. This applies
only when \code{type="missing.edge"}.}
}
\description{
Generates a list of conditional independence statements that must hold in every
probability distribution compatible with the given model.
}
\examples{
g <- dagitty( "dag{ x -> m -> y }" )
impliedConditionalIndependencies( g ) # one
latents( g ) <- c("m")
impliedConditionalIndependencies( g ) # none
}
