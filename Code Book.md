
#Tidy Data Codebook
The data set is located in TidySet.txt. It contains the averaged mean and standard deviation for each subject and each activity. There are 6 rows for each subject, correspondign to the six activities. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals Acc-XYZ and Gyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (BodyAcc-XYZ and GravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (BodyAccJerk-XYZ and BodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (BodyAccMag, GravityAccMag, BodyAccJerkMag, BodyGyroMag, BodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FFT BodyAcc-XYZ, FFT BodyAccJerk-XYZ, FFT BodyGyro-XYZ, FFT BodyAccJerkMag, FFT BodyGyroMag, FFT BodyGyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Variables
The data set contains the following variables:
*activity 
*subject
*BodyAcc mean X
*BodyAcc mean Y
*BodyAcc mean Z
*GravityAcc mean X
*GravityAcc mean Y
*GravityAcc mean Z
*BodyAccJerk mean X
*BodyAccJerk mean Y
*BodyAccJerk mean Z
*BodyGyro mean X
*BodyGyro mean Y
*BodyGyro mean Z
*BodyGyroJerk mean X
*BodyGyroJerk mean Y
*BodyGyroJerk mean Z
*BodyAccMag mean
*BodyAccMag std
*GravityAccMag mean
*GravityAccMag std
*BodyAccJerkMag mean
*BodyAccJerkMag std
*BodyGyroMag mean
*BodyGyroMag std
*BodyGyroJerkMag mean
*BodyGyroJerkMag std
*FFT BodyAcc mean X
*FFT BodyAcc mean Y
*FFT BodyAcc mean Z
*FFT BodyAccJerk mean X
*FFT BodyAccJerk mean Y
*FFT BodyAccJerk mean Z
*FFT BodyGyro mean X
*FFT BodyGyro mean Y
*FFT BodyGyro mean Z
*FFT BodyAccMag mean
*FFT BodyAccMag std
*FFT BodyBodyAccJerkMag mean
*FFT BodyBodyAccJerkMag std
*FFT BodyBodyGyroMag mean
*FFT BodyBodyGyroMag std
*FFT BodyBodyGyroJerkMag mean
*FFT BodyBodyGyroJerkMag std










