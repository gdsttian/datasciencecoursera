## The Raw Data
### Data files
After the raw data file was downloaded and extracted to a directory, files in the directory would include:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training data set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. 
- 'train/Inertial Signals/total_acc_y_train.txt': The acceleration signal from the smartphone accelerometer Y axis in standard gravity units 'g'. Every row shows a 128 element vector.
- 'train/Inertial Signals/total_acc_z_train.txt': The acceleration signal from the smartphone accelerometer Z axis in standard gravity units 'g'. Every row shows a 128 element vector.
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration for X axis.
- 'train/Inertial Signals/body_acc_y_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration for Y axis.
- 'train/Inertial Signals/body_acc_z_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration for Z axis.
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample for X axis. The units are radians/second. 
- 'train/Inertial Signals/body_gyro_y_train.txt': The angular velocity vector measured by the gyroscope for each window sample for Y axis. The units are radians/second. 
- 'train/Inertial Signals/body_gyro_z_train.txt': The angular velocity vector measured by the gyroscope for each window sample for Z axis. The units are radians/second. 
- 'test/X_test.txt': Test data set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/Inertial Signals/total_acc_x_test.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector.
- 'test/Inertial Signals/total_acc_y_test.txt': The acceleration signal from the smartphone accelerometer Y axis in standard gravity units 'g'. Every row shows a 128 element vector.
- 'test/Inertial Signals/total_acc_z_test.txt': The acceleration signal from the smartphone accelerometer Z axis in standard gravity units 'g'. Every row shows a 128 element vector.
- 'test/Inertial Signals/body_acc_x_test.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration for X axis. 
- 'test/Inertial Signals/body_acc_y_test.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration for Y axis. 
- 'test/Inertial Signals/body_acc_z_test.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration for Z axis. 
- 'test/Inertial Signals/body_gyro_x_test.txt': The angular velocity vector measured by the gyroscope for each window sample for X axis. The units are radians/second. 
- 'test/Inertial Signals/body_gyro_y_test.txt': The angular velocity vector measured by the gyroscope for each window sample for Y axis. The units are radians/second.
- 'test/Inertial Signals/body_gyro_z_test.txt': The angular velocity vector measured by the gyroscope for each window sample for Z axis. The units are radians/second. 

### Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

    tBodyAcc-XYZ
    tGravityAcc-XYZ
    tBodyAccJerk-XYZ
    tBodyGyro-XYZ
    tBodyGyroJerk-XYZ
    tBodyAccMag
    tGravityAccMag
    tBodyAccJerkMag
    tBodyGyroMag
    tBodyGyroJerkMag
    fBodyAcc-XYZ
    fBodyAccJerk-XYZ
    fBodyGyro-XYZ
    fBodyAccMag
    fBodyAccJerkMag
    fBodyGyroMag
    fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

    mean(): Mean value
    std(): Standard deviation
    mad(): Median absolute deviation 
    max(): Largest value in array
    min(): Smallest value in array
    sma(): Signal magnitude area
    energy(): Energy measure. Sum of the squares divided by the number of values. 
    iqr(): Interquartile range 
    entropy(): Signal entropy
    arCoeff(): Autorregresion coefficients with Burg order equal to 4
    correlation(): correlation coefficient between two signals
    maxInds(): index of the frequency component with largest magnitude
    meanFreq(): Weighted average of the frequency components to obtain a mean frequency
    skewness(): skewness of the frequency domain signal 
    kurtosis(): kurtosis of the frequency domain signal 
    bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
    angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

    gravityMean
    tBodyAccMean
    tBodyAccJerkMean
    tBodyGyroMean
    tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt' which include total of 561 features.

### Activities

The class labels with their corresponding activity names in 'activity_labels.txt' include:

    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING

## The Tidy Data Set
### Data Dtructure

The tidy data set include 180 objectives of 68 variables as follows:

     $ Subject                    : int  1 2 3 4 5 6 7 8 9 10 ...
     $ Activity                   : Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ tBodyAcc-mean()-X          : num  0.277 0.276 0.276 0.279 0.278 ...
     $ tBodyAcc-mean()-Y          : num  -0.0174 -0.0186 -0.0172 -0.0148 -0.0173 ...
     $ tBodyAcc-mean()-Z          : num  -0.111 -0.106 -0.113 -0.111 -0.108 ...
     $ tBodyAcc-std()-X           : num  -0.284 -0.424 -0.36 -0.441 -0.294 ...
     $ tBodyAcc-std()-Y           : num  0.1145 -0.0781 -0.0699 -0.0788 0.0767 ...
     $ tBodyAcc-std()-Z           : num  -0.26 -0.425 -0.387 -0.586 -0.457 ...
     $ tGravityAcc-mean()-X       : num  0.935 0.913 0.937 0.964 0.973 ...
     $ tGravityAcc-mean()-Y       : num  -0.2822 -0.3466 -0.262 -0.0859 -0.1004 ...
     $ tGravityAcc-mean()-Z       : num  -0.0681 0.08473 -0.13811 0.12776 0.00248 ...
     $ tGravityAcc-std()-X        : num  -0.977 -0.973 -0.978 -0.984 -0.979 ...
     $ tGravityAcc-std()-Y        : num  -0.971 -0.972 -0.962 -0.968 -0.962 ...
     $ tGravityAcc-std()-Z        : num  -0.948 -0.972 -0.952 -0.963 -0.965 ...
     $ tBodyAccJerk-mean()-X      : num  0.074 0.0618 0.0815 0.0784 0.0846 ...
     $ tBodyAccJerk-mean()-Y      : num  0.02827 0.01825 0.01006 0.00296 -0.01632 ...
     $ tBodyAccJerk-mean()-Z      : num  -4.17e-03 7.90e-03 -5.62e-03 -7.68e-04 8.32e-05 ...
     $ tBodyAccJerk-std()-X       : num  -0.114 -0.278 -0.269 -0.297 -0.303 ...
     $ tBodyAccJerk-std()-Y       : num  0.067 -0.0166 -0.045 -0.2212 -0.091 ...
     $ tBodyAccJerk-std()-Z       : num  -0.503 -0.586 -0.529 -0.751 -0.613 ...
     $ tBodyGyro-mean()-X         : num  -0.0418 -0.053 -0.0256 -0.0318 -0.0489 ...
     $ tBodyGyro-mean()-Y         : num  -0.0695 -0.0482 -0.0779 -0.0727 -0.069 ...
     $ tBodyGyro-mean()-Z         : num  0.0849 0.0828 0.0813 0.0806 0.0815 ...
     $ tBodyGyro-std()-X          : num  -0.474 -0.562 -0.572 -0.501 -0.491 ...
     $ tBodyGyro-std()-Y          : num  -0.0546 -0.5385 -0.5638 -0.6654 -0.5046 ...
     $ tBodyGyro-std()-Z          : num  -0.344 -0.481 -0.477 -0.663 -0.319 ...
     $ tBodyGyroJerk-mean()-X     : num  -0.09 -0.0819 -0.0952 -0.1153 -0.0888 ...
     $ tBodyGyroJerk-mean()-Y     : num  -0.0398 -0.0538 -0.0388 -0.0393 -0.045 ...
     $ tBodyGyroJerk-mean()-Z     : num  -0.0461 -0.0515 -0.0504 -0.0551 -0.0483 ...
     $ tBodyGyroJerk-std()-X      : num  -0.207 -0.39 -0.386 -0.492 -0.358 ...
     $ tBodyGyroJerk-std()-Y      : num  -0.304 -0.634 -0.639 -0.807 -0.571 ...
     $ tBodyGyroJerk-std()-Z      : num  -0.404 -0.435 -0.537 -0.64 -0.158 ...
     $ tBodyAccMag-mean()         : num  -0.137 -0.29 -0.255 -0.312 -0.158 ...
     $ tBodyAccMag-std()          : num  -0.22 -0.423 -0.328 -0.528 -0.377 ...
     $ tGravityAccMag-mean()      : num  -0.137 -0.29 -0.255 -0.312 -0.158 ...
     $ tGravityAccMag-std()       : num  -0.22 -0.423 -0.328 -0.528 -0.377 ...
     $ tBodyAccJerkMag-mean()     : num  -0.141 -0.281 -0.28 -0.367 -0.288 ...
     $ tBodyAccJerkMag-std()      : num  -0.0745 -0.1642 -0.1399 -0.3169 -0.2822 ...
     $ tBodyGyroMag-mean()        : num  -0.161 -0.447 -0.466 -0.498 -0.356 ...
     $ tBodyGyroMag-std()         : num  -0.187 -0.553 -0.562 -0.553 -0.492 ...
     $ tBodyGyroJerkMag-mean()    : num  -0.299 -0.548 -0.566 -0.681 -0.445 ...
     $ tBodyGyroJerkMag-std()     : num  -0.325 -0.558 -0.567 -0.73 -0.489 ...
     $ fBodyAcc-mean()-X          : num  -0.203 -0.346 -0.317 -0.427 -0.288 ...
     $ fBodyAcc-mean()-Y          : num  0.08971 -0.0219 -0.0813 -0.1494 0.00946 ...
     $ fBodyAcc-mean()-Z          : num  -0.332 -0.454 -0.412 -0.631 -0.49 ...
     $ fBodyAcc-std()-X           : num  -0.319 -0.458 -0.379 -0.447 -0.298 ...
     $ fBodyAcc-std()-Y           : num  0.056 -0.1692 -0.124 -0.1018 0.0426 ...
     $ fBodyAcc-std()-Z           : num  -0.28 -0.455 -0.423 -0.594 -0.483 ...
     $ fBodyAccJerk-mean()-X      : num  -0.171 -0.305 -0.305 -0.359 -0.345 ...
     $ fBodyAccJerk-mean()-Y      : num  -0.0352 -0.0788 -0.1405 -0.2796 -0.1811 ...
     $ fBodyAccJerk-mean()-Z      : num  -0.469 -0.555 -0.514 -0.729 -0.59 ...
     $ fBodyAccJerk-std()-X       : num  -0.134 -0.314 -0.297 -0.297 -0.321 ...
     $ fBodyAccJerk-std()-Y       : num  0.10674 -0.01533 -0.00561 -0.2099 -0.05452 ...
     $ fBodyAccJerk-std()-Z       : num  -0.535 -0.616 -0.544 -0.772 -0.633 ...
     $ fBodyGyro-mean()-X         : num  -0.339 -0.43 -0.438 -0.373 -0.373 ...
     $ fBodyGyro-mean()-Y         : num  -0.103 -0.555 -0.562 -0.688 -0.514 ...
     $ fBodyGyro-mean()-Z         : num  -0.256 -0.397 -0.418 -0.601 -0.213 ...
     $ fBodyGyro-std()-X          : num  -0.517 -0.604 -0.615 -0.543 -0.529 ...
     $ fBodyGyro-std()-Y          : num  -0.0335 -0.533 -0.5689 -0.6547 -0.5027 ...
     $ fBodyGyro-std()-Z          : num  -0.437 -0.56 -0.546 -0.716 -0.42 ...
     $ fBodyAccMag-mean()         : num  -0.129 -0.324 -0.29 -0.451 -0.305 ...
     $ fBodyAccMag-std()          : num  -0.398 -0.577 -0.456 -0.651 -0.52 ...
     $ fBodyBodyAccJerkMag-mean() : num  -0.0571 -0.1691 -0.1868 -0.3186 -0.2695 ...
     $ fBodyBodyAccJerkMag-std()  : num  -0.1035 -0.1641 -0.0899 -0.3205 -0.3057 ...
     $ fBodyBodyGyroMag-mean()    : num  -0.199 -0.531 -0.57 -0.609 -0.484 ...
     $ fBodyBodyGyroMag-std()     : num  -0.321 -0.652 -0.633 -0.594 -0.59 ...
     $ fBodyBodyGyroJerkMag-mean(): num  -0.319 -0.583 -0.608 -0.724 -0.548 ...
     $ fBodyBodyGyroJerkMag-std() : num  -0.382 -0.558 -0.549 -0.758 -0.456 ...

### Code Dictionary
    Subject:    ID of the subject who performed the activity for each window sample, ranging from 1 to 30
    Activity:   Six activities performed by each subject including (labels and cooresponding activity names): 
        1 WALKING
        2 WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4 SITTING
        5 STANDING
        6 LAYING
    All other variables are the average of each variable for each activity and each subject.
