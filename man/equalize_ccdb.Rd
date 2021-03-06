% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ContigCellDB-methods.R
\name{equalize_ccdb}
\alias{equalize_ccdb}
\title{Take the intersection of keys in tables in \code{x}}
\usage{
equalize_ccdb(x, cell = TRUE, contig = TRUE, cluster = TRUE, sort = FALSE)
}
\arguments{
\item{x}{\code{\link[=ContigCellDB]{ContigCellDB()}}}

\item{cell}{\code{logical} equalize cells}

\item{contig}{\code{logical} equalize contigs}

\item{cluster}{\code{logical} equalize clusters}

\item{sort}{\code{logical} should equalized fields also be \code{\link[=order]{order()}}ed by their primary keys?}
}
\value{
\code{\link[=ContigCellDB]{ContigCellDB()}}
}
\description{
The cells in \code{cell_tbl}, and clusters in \code{cluster_tbl} can potentially be a superset of the \code{contig_tbl}.
}
\details{
\itemize{
\item \code{equalize_ccdb(x, cell = TRUE)} trims cells that aren't in \code{contig_tbl} or  \code{cluster_tbl}.
\item \code{equalize_ccdb(x, cluster = TRUE)} trims clusters that aren't in \code{contig_tbl}.
\item \code{equalize_ccdb(x, contig = TRUE)} trims contigs that aren't \code{cell_tbl} or \code{cluster_tbl}.
}
}
