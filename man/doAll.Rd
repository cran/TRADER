\name{doAll}
\alias{doAll}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Do all implemented analyses, write tables and figures.
%%  ~~function to do ... ~~
}
\description{
The TRADER package provides only one way for disturbance reconstruction from tree-ring data. TRADER is a unique package bringing the first instrument for analysis of forest disturbance history in complementary ways. Final advantage of TRADER is the possibility of results comparison between individual studies. This is enabled by easy parameter changes in data processing, as well as by clearly arranged graphical and tabular outputs. We developed TRADER in open source R environment, to further support the on-going open-source software development for dendrochronological methods and data availability.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
doAll(data, m1 = 10, m2 = 10, abs.threshold = NULL, boundary = NULL, buffer = 2, 
  criteriaNA = 0.2, criteria2NA = 0.5, 
  criteriaBA = 0.2, criteria2BA = 0.5, segmentBA = 0.5, segment2BA = 0.5,
  criteriaS = 0.2, criteria2S = 0.5, segmentS = 0.5, segment2S = 0.5,
  gfun = mean, length = 2, notop = 10, notop2 = 10, 
  storedev = pdf, drawing=TRUE, prefix = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{A data.frame with series as columns and years as rows such as that produced by read.* function of dplR .
}
  \item{m1}{Determines the number of years to be averaged (including target year) for period prior the potential releas.
%%     ~~Describe \code{m1} here~~
}
  \item{m2}{Determines the number of years to be averaged (including target year) for period prior the potential releas.
%%     ~~Describe \code{m2} here~~
}
  \item{abs.threshold}{Threshold of absolute-increase method.
%%     ~~Describe \code{m2} here~~
}
  \item{boundary}{Boundary line function of one argument, eg. \code{boundary=function(x) {5.0067*exp(-0.664*x)}}
%%     ~~Describe \code{boundary} here~~
}
  \item{buffer}{Number of years determining how close to one another two releases can be.
%%     ~~Describe \code{buffer} here~~
}
  \item{criteriaNA}{Threshold for detection of moderate release in NA method.
%%     ~~Describe \code{criteria} here~~
}
  \item{criteria2NA}{Threshold for detection of major release in NA method.
%%     ~~Describe \code{criteria2} here~~
}
  \item{criteriaBA}{Threshold for detection of moderate release in BA method.
%%     ~~Describe \code{criteria} here~~
}
  \item{criteria2BA}{Threshold for detection of major release in BA method.
%%     ~~Describe \code{criteria2} here~~
}
  \item{criteriaS}{Threshold for detection of moderate release in S method.
%%     ~~Describe \code{criteria} here~~
}
  \item{criteria2S}{Threshold for detection of major release in S method.
%%     ~~Describe \code{criteria2} here~~
}

  \item{segmentBA}{Determines length of the segment on which prior growth will be divided in BA method.
%%     ~~Describe \code{segment} here~~
}
  \item{segment2BA}{Determines length of the segment on which first mm of prior growth will be divided in BA method.
%%     ~~Describe \code{segment2} here~~
}
  \item{segmentS}{Determines length of the segment on which prior growth will be divided in S method.
%%     ~~Describe \code{segment} here~~
}
  \item{segment2S}{Determines length of the segment on which first mm of prior growth will be divided in S method.
%%     ~~Describe \code{segment2} here~~
}
  \item{prefix}{Prefix of saved files.
%%     ~~Describe \code{prefix} here~~
}
  \item{gfun}{Determines if M1 and M2 values are mean or median for selected period.
%%     ~~Describe \code{gfun} here~~
}
  \item{length}{Determines how many years have to be given critera exceeded to be considered as release.
%%     ~~Describe \code{length} here~~
}
  \item{notop}{Number of  highest data points for fitting the boundary line.
%%     ~~Describe \code{notop} here~~
}
  \item{notop2}{Number of  highest data points for fitting the boundary  line in the segments for first mm.
%%     ~~Describe \code{notop2} here~~
}
  \item{storedev}{Format for saving the graphical outputs, eg. pdf or jpeg.
%%     ~~Describe \code{storedev} here~~
}
  \item{drawing}{If TRUE, graphical outputs for individual trees.
%%     ~~Describe \code{storedev} here~~
}
  \item{\dots}{Parameters passed to plot function.
%%     ~~Describe \code{\dots} here~~
}
}
\details{
For details look at methods that are evaluated: \code{\link{absoluteIncrease}}, \code{\link{noblabrams}} and \code{\link{splechtna}}.
%%  ~~ If necessary, more details than the description above ~~
}
\value{Write many tables and figures in the current directory.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Nowacki, G.J. & Abrams, M.D. 1997. Radial-growth averaging criteria for reconstructing disturbance histories from presettlement-origin oaks. Ecological Monographs, 67, 225-249.
\cr
Black, B.A. & Abrams, M.D. 2003. Use of boundary-line growth patterns as a basis for dendroecological release criteria. Ecological Applications, 13, 1733-1749.
\cr
Fraver, S. & White, A.S. 2005. Identifying growth releases in dendrochronological studies of forest disturbance. Canadian Journal of Forest Research-Revue Canadienne De Recherche Forestiere, 35, 1648-1656.
\cr
Splechtna, B.E., Gratzer, G. & Black, B.A. 2005. Disturbance history of a European old-growth mixed-species forest - A spatial dendro-ecological analysis. Journal of Vegetation Science, 16, 511-522.
}
\author{Pavel Fibich <pavel.fibich@prf.jcu.cz>, Jan Altman <altman.jan@gmail.com>, Tuomas Aakala <tuomas.aakala@helsinki.fi>, Jiri Dolezal <jiriddolezal@gmail.com>}
\note{
Check reference.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{ \code{\link{absoluteIncreaseALL}},
\code{\link{growthAveragingALL}},
\code{\link{boundaryLineALL}},
\code{\link{splechtnaALL}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(relData)
\donttest{ doAll(relData1,length=5,stodev=pdf) }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ growth averaging }
\keyword{ release }% __ONLY ONE__ keyword per line
\keyword{ splechtna}
\keyword{ treering}
\keyword{ boundary line}