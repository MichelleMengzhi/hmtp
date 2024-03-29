% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/crossReferenceList.R
\name{crossReferenceList}
\alias{crossReferenceList}
\title{crossReferenceList}
\usage{
crossReferenceList(crossReferenceFile, mySubjectClass)
}
\arguments{
\item{crossReferenceFile}{The filepath of sequence database whose
sequences have pdb in text.}

\item{mySubjectClass}{A S4 class storing all information from the
given sequence database in fasta.}
}
\value{
A dataframe with column "entry", "crossReference" which stores
entry names and their corresponding PDB name
}
\description{
Create a dataframe storing entries and corresponding cross reference.
There might be more than one pdb names for one sequence, the package
only pick the last one in given file.
}
\examples{
# Go to UniPort, download IPR005814 family entry database in text that is reviewed and has
# 3D structure (databaseExample.fasta, databaseExample.txt).

mySubject <- Biostrings::readAAStringSet("databaseExample.fasta")
crossReferenceList("databaseExample.txt", mySubject)

}
