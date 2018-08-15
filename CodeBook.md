# Codebook for Geting and Cleaning Data Course Project
This code book describes the variables, the data, any transformations or works that we performed to clean up the data, and any other relevant information.  See the README.md file of this repo for background information on this data set.  It explains how all of the scripts work and how they are connected.

## Data
“secTidyDataSet.txt” is the final tidy data set for this project of this repo.  It is a text file with space-separated values.  The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.  Each row represents 1 subject and 1 activity type (label).  
The raw data included multiple measurement observations for each subject and activity type, but these data were averaged together for the final tidy data set. 

## Variable
This code book summarizes the resulting data fields in secTidyData.txt.  Two columns in the data set serve as Identifiers.

**Identifiers**
* subject --  Subject ID of the 30 volunteers who performed the activity, ranges from 1 to 30. 
* label –- Activity label or type of activity performed by the 30 subjects (volunteers) for which the measurement were taken.
They are string with 6 possible values:
 1. WALKING
 1. WALKING_UPSTAIRS
 1. WALKING_DOWNSTAIRS
 1. SITTING
 1. STANDING
 1. LAYING

**Measurements**

All measurements normalized and bounded within [-1,1].
The measurements are classified in two domains:
* Time domain signals (variables prefixed by time), resulting from the capture of accelerometer and gyroscope raw signals.
* Frequency-domain signals (variables prefixed by frequency), resulting from the application of a Fast Fourier Transform (FFT) to some of the  frequency domain signals.

**Time domain signals**
* Average time domain body acceleration in the X, Y and Z directions:
  * TimeBodyAccelerometerMean() - X
  * TimeBodyAccelerometerMean() - Y
  * TimeBodyAccelerometerMean() - Z
* Standard deviation of the time domain body acceleration in the X, Y and Z directions:
  * TimeBodyAccelerometerSTD() - X
  * TimeBodyAccelerometerSTD() - Y
  * TimeBodyAccelerometerSTD() - Z
* Average time domain gravity acceleration in the X, Y and Z directions:
  * TimeGravityAccelerometerMean() - X
  * TimeGravityAccelerometerMean() - Y
  * TimeGravityAccelerometerMean() - Z
* Standard deviation of the time domain gravity acceleration in the X, Y and Z directions:
  * TimeGravityAccelerometerSTD() - X 
  * TimeGravityAccelerometerSTD() - Y
  * TimeGravityAccelerometerSTD() - Z
* Average time domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * TimeBodyAccelerometerJerkMean() - X
  * TimeBodyAccelerometerJerkMean() - Y
  * TimeBodyAccelerometerJerkMean() - Z
* Standard deviation of the time domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * TimeBodyAccelerometerJerkSTD() - X
  * TimeBodyAccelerometerJerkSTD() - Y
  * TimeBodyAccelerometerJerkSTD() - Z
* Average time domain body angular velocity in the X, Y and Z directions:
  * TimeBodyGyroscopeMean() - X
  * TimeBodyGyroscopeMean() - Y
  * TimeBodyGyroscopeMean() - Z
* Standard deviation of the time domain body angular velocity in the X, Y and Z directions:
  * TimeBodyGyroscopeSTD() - X
  * TimeBodyGyroscopeSTD() - Y
  * TimeBodyGyroscopeSTD() - Z
* Average time domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
  * TimeBodyGyroscopeJerkMean() - X
  * TimeBodyGyroscopeJerkMean() - Y
  * TimeBodyGyroscopeJerkMean() - Z
* Standard deviation of the time domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:
  * TimeBodyGyroscopeJerkSTD() - X
  * TimeBodyGyroscopeJerkSTD() - Y
  * TimeBodyGyroscopeJerkSTD() - Z
* Average and standard deviation of the time domain magnitude of body acceleration:
  * TimeBodyAccelerometerMagnitudeMean()
  * TimeBodyAccelerometerMagnitudeSTD()
* Average and standard deviation of the time domain magnitude of gravity acceleration:
  * TimeGravityAccelerometerMagnitudeMean()
  * TimeGravityAccelerometerMagnitudeSTD()
* Average and standard deviation of the time domain magnitude of body acceleration jerk (derivation of the acceleration in time):
  * TimeBodyAccelerometerJerkMagnitudeMean()
  * TimeBodyAccelerometerJerkMagnitudeSTD()
* Average and standard deviation of the time domain magnitude of body angular velocity:
  * TimeBodyGyroscopeMagnitudeMean()
  * TimeBodyGyroscopeMagnitudeSTD()
* Average and standard deviation of the time domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
  * TimeBodyGyroscopeJerkMagnitudeMean()
  * TimeBodyGyroscopeJerkMagnitudeSTD()

**Frequency-domain signals**
* Average frequency domain body acceleration in the X, Y and Z directions:
  * FrequencyBodyAccelerometerMean() - X
  * FrequencyBodyAccelerometerMean() - Y
  * FrequencyBodyAccelerometerMean() - Z
* Standard deviation of the frequency domain body acceleration in the X, Y and Z directions:
  * FrequencyBodyAccelerometerSTD() - X
  * FrequencyBodyAccelerometerSTD() - Y
  * FrequencyBodyAccelerometerSTD() – Z
* Weighted average of the frequency components of the frequency domain body acceleration in the X, Y and Z directions:
  * FequencyBodyAccelerometerMeanFreq() - X
  * FequencyBodyAccelerometerMeanFreq() - Y
  * FrequencyBodyAccelerometerMeanFreq() - Z
* Average frequency domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * FrequencyBodyAccelerometerJerkMean() - X
  * FrequencyBodyAccelerometerJerkMean() - Y
  * FrequencyBodyAccelerometerJerkMean() - Z
* Standard deviation of the frequency domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * FrequencyBodyAccelerometerJerkSTD() - X
  * FrequencyBodyAccelerometerJerkSTD() - Y
  * FrequencyBodyAccelerometerJerkSTD() - Z
* Weighted average of the frequency components of the frequency domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:
  * FrequencyBodyAccelerometerJerkMeanFreq() - X
  * FrequencyBodyAccelerometerJerkMeanFreq() - Y
  * FrequencyBodyAccelerometerJerkMeanFreq() - Z
* Average frequency domain body angular velocity in the X, Y and Z directions:
  * FrequencyBodyGyroscopeMean() - X
  * FrequencyBodyGyroscopeMean() - Y
  * FrequencyBodyGyroscopeMean() - Z
* Standard deviation of the frequency domain body angular velocity in the X, Y and Z directions:
  * FrequencyBodyGyroscopeSTD() - X
  * FrequencyBodyGyroscopeSTD() - Y
  * FrequencyBodyGyroscopeSTD()  -Z
* Weighted average of the frequency components of the frequency domain body angular velocity in the X, Y and Z directions:
  * FrequencyBodyGyroscopeMeanFreq() - X
  * FrequencyBodyGyroscopeMeanFreq() - Y
  * FrequencyBodyGyroscopeMeanFreq() - Z
* Average, standard deviation, and weighted average of the frequency components of the frequency domain magnitude of body acceleration:
  * FrequencyBodyAccelerometerMagnitudeMean()
  * FrequencyBodyAccelerometerMagnitudeSTD()
  * FrequencyBodyAccelerometerMagnitudeMeanFreq()
* Average, standard deviation, and weighted average of the frequency components of the frequency domain magnitude of body acceleration jerk (derivation of the acceleration in time):
  * FrequencyBodyAccelerometerJerkMagnitudeMean()
  * FrequencyBodyAccelerometerJerkMagnitudeSTD()
  * FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()
* Average, standard deviation, and weighted average of the frequency components of the frequency domain magnitude of body angular velocity:
  * FrequencyBodyGyroscopeMagnitudeMean()
  * FrequencyBodyGyroscopeMagnitudeSTD()
  * FrequencyBodyGyroscopeMagnitudeMeanFreq()
* Average, standard deviation, and weighted average of the frequency components of the frequency domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):
  * FrequencyBodyGyroscopeJerkMagnitudeMean()
  * FrequencyBodyGyroscopeJerkMagnitudeSTD()
  * FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()

**Others**
* Angle () – Angle between the two vectors inside the parenthesis

## Transformations
The following transformations or work will be performed to get from the raw data to the tidy data.  These transformations can be executed through the scripts ‘run_analysis.R’ 
1. The training and test sets have been merged to create one data set.
1. The measurements on the mean and standard deviation have been extracted for each measurement.  The other measurements have been discarded.
1. The label (activity label or type of activity) identifiers (originally coded as integers between 1 and 6) have been replaced with descriptive activity names or named factor levels. 
1. The data set or variable names were replaced with descriptive variable names (e.g. tBodyAcc-mean()-X was expanded to TimeBodyAccelerometerMean() - X), using the following criteria: 
   * The initial f and t were expanded to frequency and time respectively.  
   * Acc, Gyro, Mag, Freq, mean, and std were replaced with Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and STD respectively.
   * Replaced BodyBody and tBody with Body and TimeBody respectively.
   * Replaced other first letter ‘lower-case’ descriptive variable names/string with ‘’upper-case’, such as “angle” to “Angle” 
1. From the data set in step 4, the final independent tidy data set has been created with the average of each variable for each activity and each subject.



