### For importing a FITS dataset into classifier ###

# Replace filename and subset out the first column, and you're good to go

library(FITSio);
x <- readFITS(file = "newTrain.fits", hdu = 1);
features <- x$colNames;
x <- x$col;
names(x) <- features;
x <- as.data.frame(x);
x <- distinct(x, x$threexmm_srcid, .keep_all = TRUE);
x <- x[c(-233)]