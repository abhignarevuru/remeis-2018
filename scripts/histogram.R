# To plot hardness ratio histograms for individual source classes

set <- read.csv("~/scripts/smotedTrain.csv")
plot(set$cat3xmm_hr1, set$class)

# Histogram
source <- function(a) {
  b <- set[which(set$class == a)]
  hr <- b$cat3xmm_hr1 + b$cat3xmm_hr2 + b$cat3xmm_hr3 + b$cat3xmm_hr4;
  hist(hr)
}
# Alternatively
  BL <- smotedTrain[which(smotedTrain$class == "BL")];
  hist(BL$cat3xmm_hr1);
  hist(BL$cat3xmm_hr2);
  #and so on