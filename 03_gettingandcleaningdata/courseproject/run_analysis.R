## Set Working Directory
setwd("E:/Backup/Coursera/03_Getting and Cleaning Data/CourseProject")

## Reading Data

## Features and Activity Labels
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)

## Training Data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
names(subject_train) <- "subject"
labels_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
names(labels_train) <- "activity"
dataset_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)

## Test Data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
names(subject_test) <- "subject"
labels_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
names(labels_test) <- "activity"
dataset_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)

## Agregate Data
alldata_train <- cbind(subject_train, labels_train, dataset_train, total_acc_x_train, total_acc_y_train, total_acc_z_train, body_acc_x_train, body_acc_y_train, body_acc_z_train, body_gyro_x_train, body_gyro_y_train, body_gyro_z_train)
alldata_test <- cbind(subject_test, labels_test, dataset_test, total_acc_x_test, total_acc_y_test, total_acc_z_test, body_acc_x_test, body_acc_y_test, body_acc_z_test, body_gyro_x_test, body_gyro_y_test, body_gyro_z_test)
alldata <- rbind(alldata_train, alldata_test)

## Add Group Column
group <- c(rep(1, nrow(alldata_train)), rep(2, nrow(alldata_test)))
alldatabygroup <- cbind(group, alldata)

## Write Data
write.table(alldatabygroup, "complete_UCI_HAR_Dataset.txt", row.names=FALSE)
