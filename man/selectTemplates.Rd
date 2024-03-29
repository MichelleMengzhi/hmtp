% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/selectTemplates.R
\name{selectTemplates}
\alias{selectTemplates}
\title{selectTemplates}
\usage{
selectTemplates(targetSequence, databaseSequences, crossReference)
}
\arguments{
\item{targetSequence}{The filepath of target sequence.}

\item{databaseSequences}{The filepath of sequence database.}

\item{crossReference}{The filepath of database sequences in text file
with only entry and cross reference information.}
}
\value{
return nothing but output:
\itemize{
\item A Visualization of pairwise alignment of selected templates
and target sequences in html.
\item Corresponding online pdb files in local
\item Corresponding alignment files in local
}
}
\description{
Select template sequences for given target sequence
from given sequence database.
}
\examples{
# Go to UniPort, download protein A3SNF5 sequence in fasta as the target
# sequence (targetExample.fasta); its IPR005814 family entry database
# in fasta and text that is reviewed and has 3D structure with pdb
# (databaseExample.fasta, databaseExample.txt).

selectTemplates("targetExample.fasta", "databaseExample.fasta",
                "databaseExample.txt")

}
