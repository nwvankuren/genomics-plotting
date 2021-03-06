% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/file_loading_functions.R
\name{load_gemma_gwas}
\alias{load_gemma_gwas}
\title{Load a GEMMA association results file.}
\usage{
load_gemma_gwas(file, pval = "p_wald")
}
\arguments{
\item{file}{GEMMA file (.assoc.txt). Can be gzipped.}

\item{pval}{Statistic column to read. This must match the column name
exactly and can be one of the following: p_wald, p_lrt, or p_score.}
}
\value{
A three-column tibble containing scaffold, position, and stat
}
\description{
This function will read a (possibly gzipped) GEMMA results file (.assoc.txt)
and return a tibble containing just the scaffold, position, and statistic.
}
\examples{
a <- system.file("extdata", "test.gemma_gwas.txt.gz",
                 package = "gwplotting")

b <- load_gemma_gwas( a, pval = 'p_wald' )
b

}
