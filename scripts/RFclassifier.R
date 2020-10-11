### Random forest implementation ###
## Abhigna Revuru - 12 July version ##

library(DMwR)
library(dplyr)
library(FITSio)

# Read training set
train_ra <- readFITS(file = "/home/revuru/scripts/newTrain.fits", hdu = 1)
features <- train_ra$colNames
train_ra <- train_ra$col
names(train_ra) <- features
train_ra <- as.data.frame(train_ra)
train_ra <- distinct(train_ra, train_ra$threexmm_srcid, .keep_all = TRUE)
train_raw <- train_ra[1:7383,1:232]

# SMOTE function
balance <- function(rawdata, cname, percover){
  temp <- rawdata
  temp$class <- replace(as.character(temp$class), which(temp$class!=cname), paste("non", cname, sep = ""))
  temp$class <- as.factor(temp$class)
  smoting <- SMOTE(class~., temp, perc.over=percover, perc.under=100, k=5)
  smoted <- subset(smoting, smoting$class==cname)
  return(smoted)
}

# Balance by oversampling minority classes
DBL <- balance(train_raw, "BL", 3300)
DCV <- balance(train_raw, "CV", 800)
DLM <- balance(train_raw, "LMXRB", 1600)
DHM <- balance(train_raw, "HMXRB", 2400)
DS1 <- subset(train_raw, train_raw$class=="S1")
DS2 <- balance(train_raw, "S2", 300)
DSTAR <- balance(train_raw, "STAR", 150)
DULX <- balance(train_raw, "ULX", 3300)

train <- rbind(DBL, DCV, DLM, DHM, DS1, DS2, DSTAR, DULX)
train$class <- as.factor(train$class)
train$class <- droplevels(train$class)

# Define training features
attach(train)
trainBase <- data.frame(class=as.factor(class), threexmm_bii, threexmm_lii)
trainHR <- data.frame(cat3xmm_hr1,cat3xmm_hr2,cat3xmm_hr3,cat3xmm_hr4)
trainStat <- data.frame(cat3xmm_e_hr1,cat3xmm_e_hr2,cat3xmm_e_hr3,cat3xmm_e_hr4,cat3xmm_flux8,cat3xmm_fvar,cat3xmm_s)
trainMWL	<- data.frame(a_ir1x,a_r1x,a_ox, a_gx)
trainWp3	<- data.frame(ffr, probability, power)

train_par <- cbind(trainBase, trainHR, trainStat, trainMWL, trainWp3)
train_par$class <- as.factor(train_par$class)

# Random forest classifier
library(randomForest)
fit <- randomForest(class~., data=train_par, importance=T, mtry=6, ntree=600, na.action=na.roughfix)

# Read test file
test <- readFITS(file = "/home/revuru/scripts/newTest.fits", hdu = 1)
features <- test$colNames
test <- test$col
names(test) <- features
test <- as.data.frame(test)
test <- distinct(test, test$threexmm_srcid, .keep_all = TRUE)
test <- test[1:124402,1:231]
pred_class <- vector(mode = "character", length = 124402)
test <- cbind(test, pred_class)

# Print test class, accuracy importance & gini impurity data
guess <- predict(fit, test)
head(guess)
table(guess) 
importance(fit, type=1)
importance(fit, type=2)
#acc <- getBinAccuracy(guess, test)
#format(acc, scientific=F)