## Set Working Directory
setwd("E:/Backup/Coursera/03_Getting and Cleaning Data/CourseProject")

## Read Lables of Features
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE,
                       stringsAsFactors=FALSE)
names(features) <- c("numFeatures", "Feature")

## Extracts number and names for features of mean() and std()
num_meanstd <- features[grepl("mean\\(\\)|std\\(\\)", features$Feature), 1]
nam_meanstd <- features[num_meanstd, 2]

## Process Training Data
## Read and label training subject data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE,
                            stringsAsFactors=FALSE)
names(subject_train) <- "Subject"
## Read and label training labels data
labels_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE,
                           stringsAsFactors=FALSE)
names(labels_train) <- "Activity"
## Read training dataset
dataset_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE,
                            stringsAsFactors=FALSE)
## Extracts the mean() and std() of the training dataset
dataset_train <- dataset_train[, num_meanstd]
## Label the mean() and std() of the training dataset
names(dataset_train) <- nam_meanstd


## Process Test Data
## Read and label test subject data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE,
                           stringsAsFactors=FALSE)
names(subject_test) <- "Subject"
## Read and label test labels data
labels_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE,
                          stringsAsFactors=FALSE)
names(labels_test) <- "Activity"
## Read test dataset
dataset_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE,
                           stringsAsFactors=FALSE)
## Extracts the mean() and std() of the test dataset
dataset_test <- dataset_test[, num_meanstd]
## Label the mean() and std() of the test dataset
names(dataset_test) <- nam_meanstd

## Agregate All Data Together
alldata_train <- cbind(subject_train, labels_train, dataset_train)
alldata_test <- cbind(subject_test, labels_test, dataset_test)
alldata <- rbind(alldata_train, alldata_test)

## Uses descriptive activity names to name the activities in the data set
## Read Lables of Features and Activities
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)
names(activity_labels) <- c("numActivity", "Activity")
alldata$Activity <- factor(alldata$Activity,
                           levels=activity_labels$numActivity,
                           labels=activity_labels$Activity)

## Creates the second, independent tidy data set with the average of each variable
## for each activity and each subject
tidydata <- aggregate(alldata[,c(3:ncol(alldata))],
                      by=list(Subject=alldata$Subject, Activity=alldata$Activity),
                      FUN=mean, na.rm=TRUE)

## Write Data
write.table(tidydata, "complete_UCI_HAR_Dataset.txt", row.names=FALSE)
