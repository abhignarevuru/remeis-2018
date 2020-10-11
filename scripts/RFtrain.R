# For master training data set (multiple detections per source) -- this is the classifier only

library(DMwR)

train_raw <- read.csv("/home/revuru/scripts/newTrain.csv")

balance <- function(rawdata, cname, percover){
  temp <- rawdata
  temp$class <- replace(as.character(temp$class), which(temp$class!=cname), paste("non", cname, sep = ""))
  temp$class <- as.factor(temp$class)
  smoting <- SMOTE(class~., temp, perc.over=percover, perc.under=100, k=5)
  smoted <- subset(smoting, smoting$class==cname)
  return(smoted)
}

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

attach(train)
trainBase <- data.frame(class=as.factor(class), threexmm_lii, threexmm_bii)
trainHR <- data.frame(cat3xmm_hr1,cat3xmm_hr2,cat3xmm_hr3,cat3xmm_hr4)
trainStat <- data.frame(cat3xmm_e_hr1,cat3xmm_e_hr2,cat3xmm_e_hr3,cat3xmm_e_hr4,cat3xmm_flux8,cat3xmm_ext,cat3xmm_extml,cat3xmm_fvar,cat3xmm_s,cat3xmm_c)
trainMWL	<- data.frame(a_ir1x,a_r1x,a_ox, a_gx)
trainWp3	<- data.frame(ffr, probability, power)

train_par <- cbind(trainBase, trainHR, trainStat, trainMWL, trainWp3)
train_par$class <- as.factor(train_par$class)

library(randomForest)
fit <- randomForest(class~., data=train_par, importance=T, mtry=6, ntree=600, na.action=na.roughfix)
print(fit)