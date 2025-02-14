% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ArchRtoSignac.R
\name{getAnnotation}
\alias{getAnnotation}
\title{getAnnotation}
\usage{
getAnnotation(reference = NULL, seqStyle = "UCSC", refversion = NULL)
}
\arguments{
\item{reference}{An Ensembl genome reference used for function GetGRangesFromEnsDb to extract gene annotations from EnsDb, for example: EnsDb.Hsapiens.v86}

\item{seqStyle}{A default sequence style changes the annotation extracted from EnsDb to ‘UCSC’ since Signac maps to hg38}

\item{refversion}{The assembly release and versions of UCSC genome reference}
}
\description{
This function gets the gene annotation from Ensembl Database in GRanges Object for the Seurat object, which includes information related to genomic locations and their associated annotations
Then it changes the annotation to the UCSC style and hg38, since Cellranger ATAC count input FastQ files were mapped to GRCh38.
}
\examples{
annotations <- getAnnotation(reference = EnsDb.Hsapiens.v86, seqStyle = 'UCSC', refversion = 'hg38')
}
