\name{detectSpecPeaks}
\alias{detectSpecPeaks}
 
\title{
Peak detection for spectra
}
\description{
Divide the whole spectra into smaller segments and detect peaks by using MassSpecWavelet package. Note that, the peak lists could be found by using other methods, this function is just a choice.
}
\usage{
detectSpecPeaks(X, nDivRange = 128, scales = seq(1, 16, 2),
        baselineThresh = 50000, SNR.Th = -1, verbose=TRUE)
}
 
\arguments{
  \item{X}{
The spectral dataset in matrix format in which each row contains a single sample
}
  \item{nDivRange}{
The size of a single small segment after division of spectra
}
  \item{scales}{
The parameter of peakDetectionCWT function of MassSpecWavelet package, look it up in the original function.
}
  \item{baselineThresh}{
It will remove all peaks under an intensity set by baselineThresh.
}
  \item{SNR.Th}{
The parameter of peakDetectionCWT function of MassSpecWavelet package, look it up in the original function. If you set -1, the function will itseff re-compute this value.
}
  \item{verbose}{
A boolean value to allow print out process information.
}
}
\details{
Divide the whole spectra into smaller segments and detect peaks by using MassSpecWavelet package. Note that, the peak lists could be found by using other methods, this function is just a choice. 
}
\value{
 
The peak lists of the spectra
}
\author{
Trung Nghia Vu 
}

\examples{ 
res=makeSimulatedData();
X=res$data;
groupLabel=res$label;



peakList <- detectSpecPeaks(X,
  nDivRange = c(128),                
  scales = seq(1, 16, 2),
  baselineThresh = 50000,
  SNR.Th = -1,
    verbose=FALSE
);    

}
 
 
\keyword{ peak detection }

