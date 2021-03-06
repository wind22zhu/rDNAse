% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/kmer.R
\name{kmer}
\alias{kmer}
\title{The Basic Kmer Descriptor}
\usage{
kmer(x, k = 2, upto = FALSE, normalize = FALSE, reverse = FALSE)
}
\arguments{
\item{x}{the input data, which should be a list or file type.}

\item{k}{the k value of kmer, it should be an integer larger than 0.}

\item{upto}{generate all the kmers: 1mer, 2mer, ..., kmer. The output feature vector is
            the combination of all these kmers. The default value of this parameter is False.}

\item{normalize}{with this option, the final feature vector will be normalized based
                 on the total occurrences of all kmers. Therefore, the elements in the feature vectors
                 represent the frequencies of kmers. The default value of this parameter is False.}

\item{reverse}{make reverse complements into a single feature, The default value of this parameter is False.
               if reverse is True, this method returns the reverse compliment kmer feature vector.}
}
\value{
A vector
}
\description{
The Basic Kmer Descriptor
}
\details{
This function calculates the basic kmer descriptor
}
\note{
if the parameters normalize and upto are both True, and then the feature vector is
      the combination of all these normalized kmers, e.g. the combination of normalized 1-kmer
      and normalized 2-kmer when k=2, normalize=True, upto=True.
}
\examples{
x = 'GACTGAACTGCACTTTGGTTTCATATTATTTGCTC'
kmer(x)
}
\author{
Min-feng Zhu <\email{wind2zhu@163.com}>
}
\references{
Noble W S, Kuehn S, Thurman R, et al. Predicting the in vivo signature of human gene regulatory sequences.
\emph{Bioinformatics}, 2005, 21 Suppl 1, i338-343.
Lee D, Karchin R, Beer M A. Discriminative prediction of mammalian enhancers from
DNA sequence. \emph{Genome research}. 2005, 21, 2167-2180.
}
\seealso{
See \code{\link{make_kmer_index}}
}
\keyword{extract}
\keyword{kmer}

