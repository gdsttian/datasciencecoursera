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

