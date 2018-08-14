# Geting-and-Cleaning-Data-Course-Project

One of the most exciting areas in all of data science right now is wearable computing - see for example this article .  Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.  In this project, data collected from the accelerometers from the Samsung Galaxy S smartphone, were retrieved, worked with and cleaned.  The goal is to prepare tidy data that can be used for later analysis. 

This repository contains the following files:

* README.md (this file), which provides an overview of the data set and how the analysis files is clear and understandable.  It explains how all of the scripts work and how they are connected.

* CodeBook.md, the code book, which describes the data, variables and transformations or work used to clean up the data, and any other relevant information.

* run_analysis.R, the required R script that was used to create the data set (see the Creating the data set section below)

* secTidyDataSet.txt, which contains the data set.

## Data Set Information



 



The source data for this project was obtained from Human Activity Recognition Using Smartphones Data Set,
which describe how the data was initially collected as follow:



 



The experiments have been carried out with a group of 30
volunteers within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING,
LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its
embedded accelerometer and gyroscope, we captured 3-axial linear acceleration
and 3-axial angular velocity at a constant rate of 50Hz. The experiments have
been video-recorded to label the data manually. The obtained dataset has been
randomly partitioned into two sets, where 70% of the volunteers was selected
for generating the training data and 30% the test data. 



The sensor signals (accelerometer and gyroscope) were pre-processed by applying
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
50% overlap (128 readings/window). The sensor acceleration signal, which has
gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force is
assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained
by calculating variables from the time and frequency domain.



 



Creating the data set



 



Training and test
data were first merged together to create one data set, then the measurements
on the mean and standard deviation were extracted for each measurement (88
variables extracted from the original 561), and then the measurements were
averaged for each subject and activity, resulting in the final independent tidy
data set.



 



The R script, run_analysis.R
will be used to create the data set.  It
does the following steps: 




 Download and unzip source data if it doesn't
     exist in the working directory.

 Load data (all training and testing tables, features
     vectors and activity labels)  

 Merge the training and the test sets to
     create one data set.

 Extract only the measurements on the mean and
     standard deviation for each measurement.

 Use descriptive activity names to name the
     activities in the data set.  Replaced
     activity label with named factor levels.

 Appropriately label the data set with
     descriptive variable names.

 Create a second, independent tidy set with
     the average of each variable for each activity and each subject.

 Write the tidy data set in txt file.



The secTidyDataSet.txt in this repository was created by
running the R script, run_analysis.R, using R
version 3.4.0 (2017-04-21) on Windows 7 64-bit Home Premium edition.



This script requires the reshape2
package (version 0.4.3 was used).





