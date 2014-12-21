Codebook
======================

This is a codebook for Getting And Cleaning Data Coursera Project tidy dataset.

The script run_analysis.R creates a tidy dataset tidy_data.txt derived from Human Activity Recognition Using Smartphones dataset.

The dataset includes results from 30 subjects performing 6 activities while wearing a smarthphone:

- Walking
- Walking Upstairs
- Walking Downstairs
- Sitting
- Standing
- Laying

We merged training and test data provided, and calculated average values of chosen variables for each subject and activity. 

## Variables

There are 68 variables in the data set:

* subject: the number of a survey subject,
* activity: one of six activities performed,
* 66 columns with average per subject/activity of chosen variables.

The original data consisted of 561 columns with different measurements for the following signals:

* BodyAcc: body acceleration 
* GravityAcc: gravity acceleration
* BodyAccJerk: body acceleration jerk
* BodyGyro: gyroscope acceleration
* BodyGyroJerk: body gyroscope jerk

The following variables were provided:

* time domain signals
  * 3-axial signals
    * tBodyAcc
    * tGravityAcc
    * tBodyAccJerk
    * tBodyGyro
    * tBodyGyroJerk
  * magnitude of signals
    * tBodyAccMag
    * tGravityAccMag
    * tBodyAccJerkMag
    * tBodyGyroMag
    * tBodyGyroJerkMag
* frequency domain signals
  * 3-axial signals 
    * fBodyAcc
    * fBodyAccJerk
    * fBodyGyro
  * magnitude of signals
    * fBodyAccMag
    * fBodyAccJerkMag
    * fBodyGyroMag
    * fBodyGyroJerkMag

Prefix 't' denotes time measurements. Prefix 'f' denotes frequency measurements. 

For each of the variables in 3-axial signals group, there exist three columns, denoted by suffix -X, -Y, -Z for X, Y and Z directions.

For the purpose of this project, we chose only mean and standard deviation measurements from the dataset, and the full list of variables used is as follows:

* 	subject
* 	activity
* 	tBodyAcc-mean-X
* 	tBodyAcc-mean-Y
* 	tBodyAcc-mean-Z
* 	tBodyAcc-std-X
* 	tBodyAcc-std-Y
* 	tBodyAcc-std-Z
* 	tGravityAcc-mean-X
* 	tGravityAcc-mean-Y
* 	tGravityAcc-mean-Z
* 	tGravityAcc-std-X
* 	tGravityAcc-std-Y
* 	tGravityAcc-std-Z
* 	tBodyAccJerk-mean-X
* 	tBodyAccJerk-mean-Y
* 	tBodyAccJerk-mean-Z
* 	tBodyAccJerk-std-X
* 	tBodyAccJerk-std-Y
* 	tBodyAccJerk-std-Z
* 	tBodyGyro-mean-X
* 	tBodyGyro-mean-Y
* 	tBodyGyro-mean-Z
* 	tBodyGyro-std-X
* 	tBodyGyro-std-Y
* 	tBodyGyro-std-Z
* 	tBodyGyroJerk-mean-X
* 	tBodyGyroJerk-mean-Y
* 	tBodyGyroJerk-mean-Z
* 	tBodyGyroJerk-std-X
* 	tBodyGyroJerk-std-Y
* 	tBodyGyroJerk-std-Z
* 	tBodyAccMag-mean
* 	tBodyAccMag-std
* 	tGravityAccMag-mean
* 	tGravityAccMag-std
* 	tBodyAccJerkMag-mean
* 	tBodyAccJerkMag-std
* 	tBodyGyroMag-mean
* 	tBodyGyroMag-std
* 	tBodyGyroJerkMag-mean
* 	tBodyGyroJerkMag-std
* 	fBodyAcc-mean-X
* 	fBodyAcc-mean-Y
* 	fBodyAcc-mean-Z
* 	fBodyAcc-std-X
* 	fBodyAcc-std-Y
* 	fBodyAcc-std-Z
* 	fBodyAccJerk-mean-X
* 	fBodyAccJerk-mean-Y
* 	fBodyAccJerk-mean-Z
* 	fBodyAccJerk-std-X
* 	fBodyAccJerk-std-Y
* 	fBodyAccJerk-std-Z
* 	fBodyGyro-mean-X
* 	fBodyGyro-mean-Y
* 	fBodyGyro-mean-Z
* 	fBodyGyro-std-X
* 	fBodyGyro-std-Y
* 	fBodyGyro-std-Z
* 	fBodyAccMag-mean
* 	fBodyAccMag-std
* 	fBodyAccJerkMag-mean
* 	fBodyAccJerkMag-std
* 	fBodyGyroMag-mean
* 	fBodyGyroMag-std
* 	fBodyGyroJerkMag-mean
* 	fBodyGyroJerkMag-std


