% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cmi.R
\name{cmi}
\alias{cmi}
\title{Conditional Mutual Information}
\usage{
cmi(data, network = FALSE, EGA = TRUE, steps = 4)
}
\arguments{
\item{data}{A dataframe with the variables to be used in the analysis or a correlation matrix.}

\item{network}{Logical.
If TRUE, returns a plot of the conditional mutual information network.
Defaults to FALSE.}

\item{EGA}{Logical.
If TRUE, exploratory graph analysis is performed using the conditional mutual information network.}

\item{steps}{Number of steps to be used in \code{\link[igraph]{cluster_walktrap}} algorithm (necessary only if the EGA argument is set to TRUE).
Defaults to 4.}
}
\description{
Computes the conditional mutual information metric using a modification of the matrix of partial correlations (see Zhao, Zhou,Zhang, & Chen, 2016).
If the raw data is provided, the correlation matrix will be computed using the \code{\link[qgraph]{cor_auto}} function of the \code{\link[qgraph]{qgraph}} package.
}
\examples{
wmt <- wmt2[,7:24]

\donttest{
#estimate EGA
ega.wmt <- EGA(data = wmt, model = "glasso", plot.EGA = TRUE)


#estimate EGAtmfg
ega.wmt <- EGA(data = wmt, model = "TMFG", plot.EGA = TRUE)

#summary statistics
summary(ega.wmt)

#plot
plot(ega.wmt)

#estimate EGA
ega.intel <- EGA(data = intelligenceBattery[,8:66], model = "glasso", plot.EGA = TRUE)

#summary statistics
summary(ega.intel)

#plot
plot(ega.intel)
}
}
\references{
Zhao, J., Zhou, Y., Zhang, X., & Chen, L. (2016).
Part mutual information for quantifying direct associations in networks.
\emph{Proceedings of the National Academy of Sciences}, \emph{113}, 5130-5135.
doi: \href{https://doi.org/10.1073/pnas.1522586113}{10.1073/pnas.1522586113}
}
\seealso{
\code{\link{bootEGA}} to investigate the stability of EGA's estimation via bootstrap
and \code{\link{EGA}} to apply the exploratory graph analysis technique.
}
\author{
Hudson F. Golino <hfg9s at virginia.edu>#'
}
