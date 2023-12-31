\name{R4RNA-package}
\alias{R4RNA}
\alias{R4RNA-package}
\docType{package}
\title{
    An R package for RNA visualization and analysis
}
\description{
    An R package for RNA visualization and analysis
}
\keyword{package}
\examples{
    # Read input data
    predicted <- readHelix(system.file("extdata", "helix.txt", package = "R4RNA"))
    known <- readVienna(system.file("extdata", "vienna.txt", package = "R4RNA"))
    sequence <- as.character(readBStringSet(system.file("extdata", "fasta.txt", package = "R4RNA")))

    plotHelix(predicted)
    pval.coloured <- colourByValue(predicted, log = TRUE, get = TRUE)
    plotDoubleHelix(pval.coloured, known, scale = FALSE)
    plotOverlapHelix(pval.coloured, known)

    cov.coloured <- colourByCovariation(known, sequence, get = TRUE)
    plotCovariance(sequence, cov.coloured)
    
    plotDoubleCovariance(cov.coloured, pval.coloured, sequence,
        conflict.filter = "grey")
    plotOverlapCovariance(pval.coloured, known, sequence, grid = TRUE,
        conflict.filter = "grey", legend = FALSE, any = TRUE)

    # List of all functions
    ls("package:R4RNA")
    # use example() and help() for more details on each function
}
