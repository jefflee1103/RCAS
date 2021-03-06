% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/motif_analysis.R
\name{runMotifDiscovery}
\alias{runMotifDiscovery}
\title{runMotifDiscovery}
\usage{
runMotifDiscovery(
  queryRegions,
  resizeN = 0,
  motifWidth = 6,
  sampleN = 0,
  genomeVersion,
  maxMismatch = 1,
  motifN = 5,
  nCores = 1
)
}
\arguments{
\item{queryRegions}{GRanges object containing coordinates of input query
regions imported by the \code{\link{importBed}} function}

\item{resizeN}{Integer value (default: 0) to resize query regions if they are
shorter than the value of \code{resize}. Set to 0 to disable resize.}

\item{motifWidth}{A Positive integer (default: 6) for the generated k-mers.
Warning: we recommend using values below 10 as the computation gets
exponentially difficult as the motif width is increased.}

\item{sampleN}{A positive integer value. The queryRegions are randomly
downsampled to include intervals as many as \code{sampleN}. The input will
be downsampled only if this value is larger than zero and less than the
total number of input intervals.}

\item{genomeVersion}{A character string to denote the BS genome library
required to extract sequences. Example: 'hg19'}

\item{maxMismatch}{A positive integer (default: 1) - maximum number of
mismatches to allow when searching for k-mer matches in sequences.}

\item{motifN}{A positive integer (default:5) denoting the maximum number of
motifs that should be returned by the \code{findDifferentialMotifs}
function}

\item{nCores}{A positive integer (default:1) number of cores used for
parallel execution.}
}
\value{
A list of four objects: k-mer count matrices for query and background
  and lists of string matches for the top discriminating motifs (motifN).
}
\description{
This function builds a random forest classifier to find the top most
discriminative motifs in the query regions compared to the background. The
background sequences are automatically generated based on the query regions.
First, k-mers of a fixed length are generated. The query and control sequences
are searched for k-mers allowing for mismatches. A random forest model is 
trained to find the most discriminative motifs.
}
\examples{
data(queryRegions)
motifResults <- runMotifDiscovery(queryRegions = queryRegions[1:1000],
                                  genomeVersion = 'hg19',
                                  motifWidth = 6, 
                                  resize = 15,
                                  motifN = 1,
                                  maxMismatch = 1,
                                  nCores = 1)
}
