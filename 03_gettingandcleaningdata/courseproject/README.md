## Project Description

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Preposition
To run the code will assume that the original data file was downloaded and extracted to the directory of "UCI HAR Dataset" under the working directory.

## How the Script Works

### Set Working Directory
    setwd("E:/Backup/Coursera/03_Getting and Cleaning Data/CourseProject")

### Read Lables of Features
    features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE,
                           stringsAsFactors=FALSE)
    names(features) <- c("numFeatures", "Feature")

### Extracts number and names for features of mean() and std()
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

