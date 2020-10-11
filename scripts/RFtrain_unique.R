# For the training data set containing only unique detections per source

library(DMwR)
train2_raw <- read.csv("/home/revuru/newTrainUnique.csv")
train2_raw <- train2_raw[c(-1)]

balance <- function(rawdata, cname, percover){
  temp <- rawdata
  temp$class <- replace(as.character(temp$class), which(temp$class!=cname), paste("non", cname, sep = ""))
  temp$class <- as.factor(temp$class)
  smoting <- SMOTE(class~., temp, perc.over=percover, perc.under=100, k=5)
  smoted <- subset(smoting, smoting$class==cname)
  return(smoted)
}

UBL <- balance(train2_raw, "BL", 3300)
UCV <- balance(train2_raw, "CV", 800)
ULM <- balance(train2_raw, "LMXRB", 1600)
UHM <- balance(train2_raw, "HMXRB", 2400)
US1 <- subset(train2_raw, train2_raw$class=="S1")
US2 <- balance(train2_raw, "S2", 300)
USTAR <- balance(train2_raw, "STAR", 150)
UULX <- balance(train2_raw, "ULX", 3300)

train2 <- rbind(UBL, UCV, ULM, UHM, US1, US2, USTAR, UULX)
train2$class <- as.factor(train2$class)
train2$class <- droplevels(train2$class)

attach(train2)
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