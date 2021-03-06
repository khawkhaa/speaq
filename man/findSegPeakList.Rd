\name{findSegPeakList}
\alias{findSegPeakList}
 
\title{
Selecting the peaks in a segment
}
\description{
This function is to find out which peaks belonging to a segment which ranges from startP to endP
}
\usage{
findSegPeakList(peakList,
                startP,
                endP)
}
 
\arguments{
  \item{peakList}{
The peak lists of the spectra.
}
  \item{startP}{
The starting point of the segment.
}
  \item{endP}{
The ending point of the segment.
}
}
\details{
This function is to find out which peaks belonging to a segment which ranges from startP to endP
}
\value{
The list of indices of the peaks in the segment.
}

\author{
Trung Nghia Vu 
}

\seealso{
\code{\link{dohClusterCustommedSegments}}
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

cat("\n ", peakList[[1]])
segmentpeakList= findSegPeakList(peakList[[1]],400,600);
cat("\n ", segmentpeakList)

}
 
 
\keyword{ segment }
\keyword{ peak list } 
