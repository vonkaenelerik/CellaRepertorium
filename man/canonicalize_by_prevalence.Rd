% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pairing-methods.R
\name{canonicalize_by_prevalence}
\alias{canonicalize_by_prevalence}
\alias{canonicalize_by_chain}
\title{For each cell, return a single, canonical chain-cluster}
\usage{
canonicalize_by_prevalence(
  tbl,
  cell_identifiers = "barcode",
  cluster_idx = "cluster_idx",
  order = 1
)

canonicalize_by_chain(
  tbl,
  cell_identifiers = "barcode",
  sort_factors = c("chain", "umis", "reads"),
  cluster_idx = "cluster_idx",
  order = 1,
  chain_levels = c("IGL", "IGK", "TRA", "TRB", "IGH")
)
}
\arguments{
\item{tbl}{\code{data.frame} containing columns specified in \code{cell_identifiers}, \code{cluster_idx} and optionally \code{chain_identifiers}}

\item{cell_identifiers}{\code{character} vector specifying columns in \code{tbl} that identify a cell}

\item{cluster_idx}{\code{character} specifying the column in \code{tbl} that identifies a cluster}

\item{order}{return the 1st, 2nd, 3rd, etc, most common chain-cluster}

\item{sort_factors}{\code{character} vector naming columns in \code{tbl} to sorted on, within  \code{cell_identifier}. Sorted by first element first, then ties broken by subsequent elements.  Sorted in decreasing order for each element.}

\item{chain_levels}{an optional \code{character} vector providing the sort order of the \code{chain} column in \code{tbl}.  Set to length zero to disable.}
}
\value{
\code{data.frame} with columns from \code{cell_identifiers} and a single \code{cluster_idx} for each cell
}
\description{
In single cell data, multiple chains (heavy-light or alpha-beta) are expected.  In some cases, there could be more than two (eg multiple alpha alleles for T cells).
This picks a cluster id for each cell based on the overall prevalence of cluster ids over all cells in \code{tbl}.
If order = 1 then the canonical chain-cluster will be the most prevalent, and if order = 2, it will be the 2nd most prevalent, and so on.  Ties are broken arbitrarily (possibly by lexicographic order of \code{cluster_idx}).
}
\section{Functions}{
\itemize{
\item \code{canonicalize_by_chain}: return a canonical contig by chain type, with TRB/IGH returned first. By default, ties are broken by umis and reads.
}}

