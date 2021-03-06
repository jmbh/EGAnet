% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dimStability.R
\name{dimStability}
\alias{dimStability}
\title{Dimension Stability Statistics from \code{\link[EGAnet]{bootEGA}}}
\usage{
dimStability(bootega.obj, orig.wc, item.stability = TRUE)
}
\arguments{
\item{bootega.obj}{A \code{\link[EGAnet]{bootEGA}} object}

\item{orig.wc}{Numeric or character.
A vector with community numbers or labels for each item.
Typically uses community results (\code{wc}) from \code{\link[EGAnet]{EGA}}}

\item{item.stability}{Boolean.
Should the item stability statistics be computed
using \code{[EGAnet]{itemStability}}?
Defaults to \code{TRUE}}
}
\value{
When argument \code{item.stability = TRUE}, returns a list containing:

\item{dimensions}{The dimensional stability of each dimension}

\item{items}{The output from \code{[EGAnet]{itemStability}}}

When argument \code{item.stability = FALSE}, returns a vector of the
dimensional stability of each dimension
}
\description{
Based on the \code{\link[EGAnet]{bootEGA}} results, this function
computes the stability of dimensions. This is computed by assessing the proportion of
times the original dimension is exactly replicated in across bootstrap samples
}
\examples{

# Load data
wmt <- wmt2[,7:24]

\dontrun{
# Estimate EGA network
ega.wmt <- EGA(data = wmt, model = "glasso")

# Estimate dimension stability
boot.wmt <- bootEGA(data = wmt, n = 100, typicalStructure = TRUE,
plot.typicalStructure = TRUE, model = "glasso",
type = "parametric", ncores = 4)

# Estimate item stability statistics
dimStability(boot.wmt, orig.wc = ega.wmt$wc, item.stability = FALSE)
}

}
\seealso{
\code{\link[EGAnet]{EGA}} to estimate the number of dimensions of an instrument using EGA and
\code{\link[EGAnet]{CFA}} to verify the fit of the structure suggested by EGA using confirmatory factor analysis.
}
\author{
Hudson F. Golino <hfg9s at virginia.edu> and Alexander P. Christensen <alexpaulchristensen@gmail.com>
}
