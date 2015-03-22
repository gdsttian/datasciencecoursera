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

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

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



str(dtTidy)
## Classes 'data.table' and 'data.frame':   11880 obs. of  11 variables:
##  $ subject         : int  1 1 1 1 1 1 1 1 1 1 ...
##  $ activity        : Factor w/ 6 levels "LAYING","SITTING",..: 1 1 1 1 1 1 1 1 1 1 ...
##  $ featDomain      : Factor w/ 2 levels "Time","Freq": 1 1 1 1 1 1 1 1 1 1 ...
##  $ featAcceleration: Factor w/ 3 levels NA,"Body","Gravity": 1 1 1 1 1 1 1 1 1 1 ...
##  $ featInstrument  : Factor w/ 2 levels "Accelerometer",..: 2 2 2 2 2 2 2 2 2 2 ...
##  $ featJerk        : Factor w/ 2 levels NA,"Jerk": 1 1 1 1 1 1 1 1 2 2 ...
##  $ featMagnitude   : Factor w/ 2 levels NA,"Magnitude": 1 1 1 1 1 1 2 2 1 1 ...
##  $ featVariable    : Factor w/ 2 levels "Mean","SD": 1 1 1 2 2 2 1 2 1 1 ...
##  $ featAxis        : Factor w/ 4 levels NA,"X","Y","Z": 2 3 4 2 3 4 1 1 2 3 ...
##  $ count           : int  50 50 50 50 50 50 50 50 50 50 ...
##  $ average         : num  -0.0166 -0.0645 0.1487 -0.8735 -0.9511 ...
##  - attr(*, "sorted")= chr  "subject" "activity" "featDomain" "featAcceleration" ...
##  - attr(*, ".internal.selfref")=<externalptr>
List the key variables in the data table

key(dtTidy)
## [1] "subject"          "activity"         "featDomain"      
## [4] "featAcceleration" "featInstrument"   "featJerk"        
## [7] "featMagnitude"    "featVariable"     "featAxis"
Show a few rows of the dataset

dtTidy
##        subject         activity featDomain featAcceleration featInstrument
##     1:       1           LAYING       Time               NA      Gyroscope
##     2:       1           LAYING       Time               NA      Gyroscope
##     3:       1           LAYING       Time               NA      Gyroscope
##     4:       1           LAYING       Time               NA      Gyroscope
##     5:       1           LAYING       Time               NA      Gyroscope
##    ---                                                                    
## 11876:      30 WALKING_UPSTAIRS       Freq             Body  Accelerometer
## 11877:      30 WALKING_UPSTAIRS       Freq             Body  Accelerometer
## 11878:      30 WALKING_UPSTAIRS       Freq             Body  Accelerometer
## 11879:      30 WALKING_UPSTAIRS       Freq             Body  Accelerometer
## 11880:      30 WALKING_UPSTAIRS       Freq             Body  Accelerometer
##        featJerk featMagnitude featVariable featAxis count  average
##     1:       NA            NA         Mean        X    50 -0.01655
##     2:       NA            NA         Mean        Y    50 -0.06449
##     3:       NA            NA         Mean        Z    50  0.14869
##     4:       NA            NA           SD        X    50 -0.87354
##     5:       NA            NA           SD        Y    50 -0.95109
##    ---                                                            
## 11876:     Jerk            NA           SD        X    65 -0.56157
## 11877:     Jerk            NA           SD        Y    65 -0.61083
## 11878:     Jerk            NA           SD        Z    65 -0.78475
## 11879:     Jerk     Magnitude         Mean       NA    65 -0.54978
## 11880:     Jerk     Magnitude           SD       NA    65 -0.58088
Summary of variables

summary(dtTidy)
##     subject                   activity    featDomain  featAcceleration
##  Min.   : 1.0   LAYING            :1980   Time:7200   NA     :4680    
##  1st Qu.: 8.0   SITTING           :1980   Freq:4680   Body   :5760    
##  Median :15.5   STANDING          :1980               Gravity:1440    
##  Mean   :15.5   WALKING           :1980                               
##  3rd Qu.:23.0   WALKING_DOWNSTAIRS:1980                               
##  Max.   :30.0   WALKING_UPSTAIRS  :1980                               
##        featInstrument featJerk      featMagnitude  featVariable featAxis 
##  Accelerometer:7200   NA  :7200   NA       :8640   Mean:5940    NA:3240  
##  Gyroscope    :4680   Jerk:4680   Magnitude:3240   SD  :5940    X :2880  
##                                                                 Y :2880  
##                                                                 Z :2880  
##                                                                          
##                                                                          
##      count         average       
##  Min.   :36.0   Min.   :-0.9977  
##  1st Qu.:49.0   1st Qu.:-0.9621  
##  Median :54.5   Median :-0.4699  
##  Mean   :57.2   Mean   :-0.4844  
##  3rd Qu.:63.2   3rd Qu.:-0.0784  
##  Max.   :95.0   Max.   : 0.9745
List all possible combinations of features

dtTidy[, .N, by = c(names(dtTidy)[grep("^feat", names(dtTidy))])]
##     featDomain featAcceleration featInstrument featJerk featMagnitude
##  1:       Time               NA      Gyroscope       NA            NA
##  2:       Time               NA      Gyroscope       NA            NA
##  3:       Time               NA      Gyroscope       NA            NA
##  4:       Time               NA      Gyroscope       NA            NA
##  5:       Time               NA      Gyroscope       NA            NA
##  6:       Time               NA      Gyroscope       NA            NA
##  7:       Time               NA      Gyroscope       NA     Magnitude
##  8:       Time               NA      Gyroscope       NA     Magnitude
##  9:       Time               NA      Gyroscope     Jerk            NA
## 10:       Time               NA      Gyroscope     Jerk            NA
## 11:       Time               NA      Gyroscope     Jerk            NA
## 12:       Time               NA      Gyroscope     Jerk            NA
## 13:       Time               NA      Gyroscope     Jerk            NA
## 14:       Time               NA      Gyroscope     Jerk            NA
## 15:       Time               NA      Gyroscope     Jerk     Magnitude
## 16:       Time               NA      Gyroscope     Jerk     Magnitude
## 17:       Time             Body  Accelerometer       NA            NA
## 18:       Time             Body  Accelerometer       NA            NA
## 19:       Time             Body  Accelerometer       NA            NA
## 20:       Time             Body  Accelerometer       NA            NA
## 21:       Time             Body  Accelerometer       NA            NA
## 22:       Time             Body  Accelerometer       NA            NA
## 23:       Time             Body  Accelerometer       NA     Magnitude
## 24:       Time             Body  Accelerometer       NA     Magnitude
## 25:       Time             Body  Accelerometer     Jerk            NA
## 26:       Time             Body  Accelerometer     Jerk            NA
## 27:       Time             Body  Accelerometer     Jerk            NA
## 28:       Time             Body  Accelerometer     Jerk            NA
## 29:       Time             Body  Accelerometer     Jerk            NA
## 30:       Time             Body  Accelerometer     Jerk            NA
## 31:       Time             Body  Accelerometer     Jerk     Magnitude
## 32:       Time             Body  Accelerometer     Jerk     Magnitude
## 33:       Time          Gravity  Accelerometer       NA            NA
## 34:       Time          Gravity  Accelerometer       NA            NA
## 35:       Time          Gravity  Accelerometer       NA            NA
## 36:       Time          Gravity  Accelerometer       NA            NA
## 37:       Time          Gravity  Accelerometer       NA            NA
## 38:       Time          Gravity  Accelerometer       NA            NA
## 39:       Time          Gravity  Accelerometer       NA     Magnitude
## 40:       Time          Gravity  Accelerometer       NA     Magnitude
## 41:       Freq               NA      Gyroscope       NA            NA
## 42:       Freq               NA      Gyroscope       NA            NA
## 43:       Freq               NA      Gyroscope       NA            NA
## 44:       Freq               NA      Gyroscope       NA            NA
## 45:       Freq               NA      Gyroscope       NA            NA
## 46:       Freq               NA      Gyroscope       NA            NA
## 47:       Freq               NA      Gyroscope       NA     Magnitude
## 48:       Freq               NA      Gyroscope       NA     Magnitude
## 49:       Freq               NA      Gyroscope     Jerk     Magnitude
## 50:       Freq               NA      Gyroscope     Jerk     Magnitude
## 51:       Freq             Body  Accelerometer       NA            NA
## 52:       Freq             Body  Accelerometer       NA            NA
## 53:       Freq             Body  Accelerometer       NA            NA
## 54:       Freq             Body  Accelerometer       NA            NA
## 55:       Freq             Body  Accelerometer       NA            NA
## 56:       Freq             Body  Accelerometer       NA            NA
## 57:       Freq             Body  Accelerometer       NA     Magnitude
## 58:       Freq             Body  Accelerometer       NA     Magnitude
## 59:       Freq             Body  Accelerometer     Jerk            NA
## 60:       Freq             Body  Accelerometer     Jerk            NA
## 61:       Freq             Body  Accelerometer     Jerk            NA
## 62:       Freq             Body  Accelerometer     Jerk            NA
## 63:       Freq             Body  Accelerometer     Jerk            NA
## 64:       Freq             Body  Accelerometer     Jerk            NA
## 65:       Freq             Body  Accelerometer     Jerk     Magnitude
## 66:       Freq             Body  Accelerometer     Jerk     Magnitude
##     featDomain featAcceleration featInstrument featJerk featMagnitude
##     featVariable featAxis   N
##  1:         Mean        X 180
##  2:         Mean        Y 180
##  3:         Mean        Z 180
##  4:           SD        X 180
##  5:           SD        Y 180
##  6:           SD        Z 180
##  7:         Mean       NA 180
##  8:           SD       NA 180
##  9:         Mean        X 180
## 10:         Mean        Y 180
## 11:         Mean        Z 180
## 12:           SD        X 180
## 13:           SD        Y 180
## 14:           SD        Z 180
## 15:         Mean       NA 180
## 16:           SD       NA 180
## 17:         Mean        X 180
## 18:         Mean        Y 180
## 19:         Mean        Z 180
## 20:           SD        X 180
## 21:           SD        Y 180
## 22:           SD        Z 180
## 23:         Mean       NA 180
## 24:           SD       NA 180
## 25:         Mean        X 180
## 26:         Mean        Y 180
## 27:         Mean        Z 180
## 28:           SD        X 180
## 29:           SD        Y 180
## 30:           SD        Z 180
## 31:         Mean       NA 180
## 32:           SD       NA 180
## 33:         Mean        X 180
## 34:         Mean        Y 180
## 35:         Mean        Z 180
## 36:           SD        X 180
## 37:           SD        Y 180
## 38:           SD        Z 180
## 39:         Mean       NA 180
## 40:           SD       NA 180
## 41:         Mean        X 180
## 42:         Mean        Y 180
## 43:         Mean        Z 180
## 44:           SD        X 180
## 45:           SD        Y 180
## 46:           SD        Z 180
## 47:         Mean       NA 180
## 48:           SD       NA 180
## 49:         Mean       NA 180
## 50:           SD       NA 180
## 51:         Mean        X 180
## 52:         Mean        Y 180
## 53:         Mean        Z 180
## 54:           SD        X 180
## 55:           SD        Y 180
## 56:           SD        Z 180
## 57:         Mean       NA 180
## 58:           SD       NA 180
## 59:         Mean        X 180
## 60:         Mean        Y 180
## 61:         Mean        Z 180
## 62:           SD        X 180
## 63:           SD        Y 180
## 64:           SD        Z 180
## 65:         Mean       NA 180
## 66:           SD       NA 180
##     featVariable featAxis   N
Save to file

Save data table objects to a tab-delimited text file called DatasetHumanActivityRecognitionUsingSmartphones.txt.

f <- file.path(path, "DatasetHumanActivityRecognitionUsingSmartphones.txt")
write.table(dtTidy, f, quote = FALSE, sep = "\t", row.names = FALSE)
