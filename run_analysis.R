#Getting and Cleaning Data Course Project

#this Script will do following:
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement.
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names.
#5.creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#set the working directory to the directory containing "UCI HAR DATASET" 

setwd("C:/Users/amitb/OneDrive/Desktop/R & Python/R/UCI HAR Dataset")

#read "features.txt" and "activity_labels.txt"

features <- read.table("./features.txt", header = FALSE)
activityNames <- read.table("./activity_labels.txt", header = FALSE)

# read train data & test data for X, Y, and subject

XTrain <- read.table("./train/X_train.txt")
XTest <- read.table("./test/X_test.txt")
YTrain <- read.table("./train/Y_train.txt")
YTest <- read.table("./test/Y_test.txt")
SubTrain <- read.table("./train/subject_train.txt")
SubTest <- read.table("./test/subject_test.txt")  

#1. Merge X,Y and subject tables with corresponding Train and test data

XTotal <- rbind(XTrain, XTest)
YTotal <- rbind(YTrain, YTest)
SubTotal <- rbind(SubTrain, SubTest)

#2. extract only the measurements on the mean and standard deviation

featuresSelected <- features[grep("mean\\(\\)|std\\(\\)",features[,2]),]
XTotal <- XTotal[,features[,1]]

#3. Uses descriptive activity names to name the activities in the data set  

colnames(YTotal) <- "activity_Name"
YTotal$activity <- factor(YTotal$activity_Name, labels = as.character(activityNames[,2]))
activity <- YTotal[,-1]

#4. Appropriately labels the data set with descriptive variable names with full terms 

colnames(XTotal) <- features[featuresSelected[,1],2]

X <- colnames(XTotal)

for (i in 1:length(X)) 
{
  X[i] <- gsub("([Gg]ravity)","Gravity",X[i])
  X[i] <- gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",X[i])
  X[i] <- gsub("[Gg]yro","Gyro",X[i])
  X[i] <- gsub("AccMag","AccMagnitude",X[i])
  X[i] <- gsub("([Bb]odyaccjerkmag)","BodyAccJerkMagnitude",X[i])
  X[i] <- gsub("JerkMag","JerkMagnitude",X[i])
  X[i] <- gsub("GyroMag","GyroMagnitude",X[i])
  X[i] <- gsub("\\()","",X[i])
  X[i] <- gsub("-std$","SD",X[i])
  X[i] <- gsub("-mean","Mean",X[i])
  X[i] <- gsub("^(t)","time",X[i])
  X[i] <- gsub("^(f)","frequency",X[i])
};

colnames(XTotal) <- X 

# create total dataset

colnames(SubTotal) <- "subject"
TotalData <- cbind(XTotal, activity, SubTotal)

#5. creates a second, independent tidy data set with the average of each variable for each activity and each subject.

TotalData <- TotalData[!is.na(names(TotalData))]

#removed columns with "NA" as labels above

MeanTotal <- TotalData %>% group_by(activity, subject) %>% summarise(across(where(is.numeric), mean))
write.table(MeanTotal, file = "./tidydata.txt", row.names = FALSE, col.names = TRUE)

