##The input data comes from the following files.

*features.txt: List of all measures in X_train.txt and X_test.txt
*activity_labels.txt: File with a record for each activity performed during the study. Maps
  to the y_train and y_test sets by an ID. 
*subject_train.txt: identifies the subject_id for each row in the X_train.txt set
*subject_test.txt: identifies the subject_id for each row in the X_test.txt set
*X_train.txt: First set of measures
*X_test.txt: Second set of measures
*y_train.txt: Activity_id for each row in the X_train.txt set
*y_test.txt: Activity_id for each row in the X_train.txt set

##Breakdown of the Columns for select files:
###activity_label.txt
ID: Id that maps to the values in y_test and y_train
Activity: different activities performed in the study (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

###x_train.txt and x_test.txt

The mean and standard deviations of the following measures constitute the records in 
the two files. Note that measures ending in -XYZ constitute individual measure 
on each of the X, Y, and Z axes.

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
