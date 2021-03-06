% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pseudo-bulk.R
\name{generate_pseudobulk}
\alias{generate_pseudobulk}
\title{Generate "pseudobulk" data from a \code{ContigCellDB}}
\usage{
generate_pseudobulk(ccdb, class_keys, total_keys, type = c("cell", "umi"))
}
\arguments{
\item{ccdb}{\code{\link[=ContigCellDB]{ContigCellDB()}}}

\item{class_keys}{\code{character} naming fields in \code{contig_tbl} that define unique classes of the repertoire}

\item{total_keys}{\code{character} naming fields that also define a class, and moreover will be conditioned upon when calculating the total}

\item{type}{one of "cell" or "umi"}
}
\value{
\code{tibble}
}
\description{
Generate "pseudobulk" data from a \code{ContigCellDB}
}
