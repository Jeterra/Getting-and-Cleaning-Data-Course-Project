Below is a brief description of the resulting data of the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data 
and 30% the test data. 

The first step was reading trainings tables and testing and merge them in one data, according to the follow:

UCI HAR Dataset/train/x_train.txt + UCI HAR Dataset/train/y_train.txt + UCI HAR Dataset/train/subject_train.txt -> train

UCI HAR Dataset/test/x_test.txt + UCI HAR Dataset/test/y_test.txt + UCI HAR Dataset/test/subject_test.txt -> test

After naming their columns, they are merged: train + test -> alldata

After this we extracted a subset that satisfied the requested conditions - whose measurements were the result of averages or standard deviations, 
completing with the description of activity names in data set.

The end result was a tidy data set summarized with the mean those measurements and saved in a txt file named Tidy.txt

This file contains the columns:

subjectId					-	The ID of the test subject (ID of volunteer)
activityId					-	The type of activity performed when the corresponding measurements were taken (from 1 to 6)
activityType				-	Name of activityId: 1 WALKING / 2 WALKING_UPSTAIRS / 3 WALKING_DOWNSTAIRS / 4 SITTING / 5 STANDING /6 LAYING

tBodyAcc-mean()-X				The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 	
tBodyAcc-mean()-Y				These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 	
tBodyAcc-mean()-Z				Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 	
tBodyAcc-std()-X				Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)	
tBodyAcc-std()-Y				using another low pass Butterworth filter with a corner frequency of 0.3 Hz.	
tBodyAcc-std()-Z		
tGravityAcc-mean()-X			Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 	
tGravityAcc-mean()-Y			Also the magnitude of these three-dimensional signals were calculated using the 	
tGravityAcc-mean()-Z			Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 	
tGravityAcc-std()-X		
tGravityAcc-std()-Y				Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 	
tGravityAcc-std()-Z				fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 	
tBodyAccJerk-mean()-X		
tBodyAccJerk-mean()-Y			These signals were used to estimate variables of the feature vector for each pattern:  	
tBodyAccJerk-mean()-Z			'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.	
tBodyAccJerk-std()-X		
tBodyAccJerk-std()-Y		
tBodyAccJerk-std()-Z		
tBodyGyro-mean()-X		
tBodyGyro-mean()-Y		
tBodyGyro-mean()-Z		
tBodyGyro-std()-X		
tBodyGyro-std()-Y		
tBodyGyro-std()-Z		
tBodyGyroJerk-mean()-X		
tBodyGyroJerk-mean()-Y		
tBodyGyroJerk-mean()-Z		
tBodyGyroJerk-std()-X		
tBodyGyroJerk-std()-Y		
tBodyGyroJerk-std()-Z		
tBodyAccMag-mean()		
tBodyAccMag-std()		
tGravityAccMag-mean()		
tGravityAccMag-std()		
tBodyAccJerkMag-mean()		
tBodyAccJerkMag-std()		
tBodyGyroMag-mean()		
tBodyGyroMag-std()		
tBodyGyroJerkMag-mean()		
tBodyGyroJerkMag-std()		
fBodyAcc-mean()-X		
fBodyAcc-mean()-Y		
fBodyAcc-mean()-Z		
fBodyAcc-std()-X		
fBodyAcc-std()-Y		
fBodyAcc-std()-Z		
fBodyAcc-meanFreq()-X		
fBodyAcc-meanFreq()-Y		
fBodyAcc-meanFreq()-Z		
fBodyAccJerk-mean()-X		
fBodyAccJerk-mean()-Y		
fBodyAccJerk-mean()-Z		
fBodyAccJerk-std()-X		
fBodyAccJerk-std()-Y		
fBodyAccJerk-std()-Z		
fBodyAccJerk-meanFreq()-X		
fBodyAccJerk-meanFreq()-Y		
fBodyAccJerk-meanFreq()-Z		
fBodyGyro-mean()-X		
fBodyGyro-mean()-Y		
fBodyGyro-mean()-Z		
fBodyGyro-std()-X		
fBodyGyro-std()-Y		
fBodyGyro-std()-Z		
fBodyGyro-meanFreq()-X		
fBodyGyro-meanFreq()-Y		
fBodyGyro-meanFreq()-Z		
fBodyAccMag-mean()		
fBodyAccMag-std()		
fBodyAccMag-meanFreq()		
fBodyBodyAccJerkMag-mean()		
fBodyBodyAccJerkMag-std()		
fBodyBodyAccJerkMag-meanFreq()		
fBodyBodyGyroMag-mean()		
fBodyBodyGyroMag-std()		
fBodyBodyGyroMag-meanFreq()		
fBodyBodyGyroJerkMag-mean()		
fBodyBodyGyroJerkMag-std()		
fBodyBodyGyroJerkMag-meanFreq()		