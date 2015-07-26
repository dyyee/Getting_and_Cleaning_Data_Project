## CodeBook

This codebook consist of following information

* Section A : Data Set Information
* Section B : File Information
* Section C : Variable
* Section D : Feature Information
* Section E : Procedure of run_analysis.R SCRIPT

******
##Section A) Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.                 
                 
Using its embedded accelerometer and gyroscope, the device captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
                
 
The training data are saved in the train folder while test data are saved in the test folder
                
 
******

##Section B) File Information

The files are extracted from following zip.                
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'test/subject_test.txt': Each row identifies the test subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/subject_train.txt': Each row identifies the train subject who performed the activity for each window sample. Its range is from 1 to 30. 

Information about other (unused) file are not included.

******

##Section C) Variable
Identifier :

 [1] "activity_id"   - Activity ID  (1:6)                        
 [2] "activity_name" - Activity Name c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")         
 [3] "subject_id"    - Participate ID (1:30)
                
 
Feature Variable :

 [4] "angle(tBodyAccJerkMean),gravityMean)"
 [5] "angle(tBodyAccMean,gravity)"         
 [6] "angle(tBodyGyroJerkMean,gravityMean)"
 [7] "angle(tBodyGyroMean,gravityMean)"    
 [8] "angle(X,gravityMean)"                
 [9] "angle(Y,gravityMean)"                
[10] "angle(Z,gravityMean)"                
[11] "fBodyAcc-Mean-X"                     
[12] "fBodyAcc-Mean-Y"                     
[13] "fBodyAcc-Mean-Z"                     
[14] "fBodyAcc-MeanFreq-X"                 
[15] "fBodyAcc-MeanFreq-Y"                 
[16] "fBodyAcc-MeanFreq-Z"                 
[17] "fBodyAcc-Std-X"                      
[18] "fBodyAcc-Std-Y"                      
[19] "fBodyAcc-Std-Z"                      
[20] "fBodyAccJerk-Mean-X"                 
[21] "fBodyAccJerk-Mean-Y"                 
[22] "fBodyAccJerk-Mean-Z"                 
[23] "fBodyAccJerk-MeanFreq-X"             
[24] "fBodyAccJerk-MeanFreq-Y"             
[25] "fBodyAccJerk-MeanFreq-Z"             
[26] "fBodyAccJerk-Std-X"                  
[27] "fBodyAccJerk-Std-Y"                  
[28] "fBodyAccJerk-Std-Z"                  
[29] "fBodyAccMag-Mean"                    
[30] "fBodyAccMag-MeanFreq"                
[31] "fBodyAccMag-Std"                     
[32] "fBodyBodyAccJerkMag-Mean"            
[33] "fBodyBodyAccJerkMag-MeanFreq"        
[34] "fBodyBodyAccJerkMag-Std"             
[35] "fBodyBodyGyroJerkMag-Mean"           
[36] "fBodyBodyGyroJerkMag-MeanFreq"       
[37] "fBodyBodyGyroJerkMag-Std"            
[38] "fBodyBodyGyroMag-Mean"               
[39] "fBodyBodyGyroMag-MeanFreq"           
[40] "fBodyBodyGyroMag-Std"                
[41] "fBodyGyro-Mean-X"                    
[42] "fBodyGyro-Mean-Y"                    
[43] "fBodyGyro-Mean-Z"                    
[44] "fBodyGyro-MeanFreq-X"                
[45] "fBodyGyro-MeanFreq-Y"                
[46] "fBodyGyro-MeanFreq-Z"                
[47] "fBodyGyro-Std-X"                     
[48] "fBodyGyro-Std-Y"                     
[49] "fBodyGyro-Std-Z"                     
[50] "tBodyAcc-Mean-X"                     
[51] "tBodyAcc-Mean-Y"                     
[52] "tBodyAcc-Mean-Z"                     
[53] "tBodyAcc-Std-X"                      
[54] "tBodyAcc-Std-Y"                      
[55] "tBodyAcc-Std-Z"                      
[56] "tBodyAccJerk-Mean-X"                 
[57] "tBodyAccJerk-Mean-Y"                 
[58] "tBodyAccJerk-Mean-Z"                 
[59] "tBodyAccJerk-Std-X"                  
[60] "tBodyAccJerk-Std-Y"                  
[61] "tBodyAccJerk-Std-Z"                  
[62] "tBodyAccJerkMag-Mean"                
[63] "tBodyAccJerkMag-Std"                 
[64] "tBodyAccMag-Mean"                    
[65] "tBodyAccMag-Std"                     
[66] "tBodyGyro-Mean-X"                    
[67] "tBodyGyro-Mean-Y"                    
[68] "tBodyGyro-Mean-Z"                    
[69] "tBodyGyro-Std-X"                     
[70] "tBodyGyro-Std-Y"                     
[71] "tBodyGyro-Std-Z"                     
[72] "tBodyGyroJerk-Mean-X"                
[73] "tBodyGyroJerk-Mean-Y"                
[74] "tBodyGyroJerk-Mean-Z"                
[75] "tBodyGyroJerk-Std-X"                 
[76] "tBodyGyroJerk-Std-Y"                 
[77] "tBodyGyroJerk-Std-Z"                 
[78] "tBodyGyroJerkMag-Mean"               
[79] "tBodyGyroJerkMag-Std"                
[80] "tBodyGyroMag-Mean"                   
[81] "tBodyGyroMag-Std"                    
[82] "tGravityAcc-Mean-X"                  
[83] "tGravityAcc-Mean-Y"                  
[84] "tGravityAcc-Mean-Z"                  
[85] "tGravityAcc-Std-X"                   
[86] "tGravityAcc-Std-Y"                   
[87] "tGravityAcc-Std-Z"                   
[88] "tGravityAccMag-Mean"                 
[89] "tGravityAccMag-Std"

                
 
##Section D) Feature Information

The feature data are coming from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
                
                 
 
###Generalized Features
[1] tBodyAcc-XYZ                 
[2] tGravityAcc-XYZ                 
[3] tBodyAccJerk-XYZ                 
[4]tBodyGyro-XYZ                 
[5]tBodyGyroJerk-XYZ                 
[6]tBodyAccMag                 
[7]tGravityAccMag                 
[8]tBodyAccJerkMag                 
[9]tBodyGyroMag                 
[10]tBodyGyroJerkMag                 
[11]fBodyAcc-XYZ                 
[12]fBodyAccJerk-XYZ                 
[13]fBodyGyro-XYZ                 
[14]fBodyAccMag                 
[15]fBodyAccJerkMag                 
[16]fBodyGyroMag                 
[17]fBodyGyroJerkMag
                
 
###Estimated Variable
The set of variables that were estimated from these signals are: 
                
Mean    : Mean value                   
Std     : Standard deviation                   
MeanFreq: Weighted average of the frequency components to obtain a mean frequency                   
angle   : Angle between to vectors.
                
 
******

##Section E) Procedure of run_analysis.R SCRIPT

The run_analysis.R script consists of 6 parts where each part has targeted at the project requirements.

###Part 1. Merges the training and the test sets to create one data set
- Read features ("features.txt") which has a list of 561 features and feature ID
- Capture the feature description


- Read TEST data set ("./test/X_test.txt") then label the column with the feature desription
- Read TEST subject ("./test/subject_test.txt") and label the column as "subject_id"
- Read TEST activity ("./test/y_test.txt") and label the column as "activity_id"


- Read TRAIN data set ("./train/X_train.txt") then label the column with the feature desription
- Read TRAIN subject ("./train/subject_train.txt") and label the column as "subject_id"
- Read TRAIN activity ("./train/y_train.txt") and label the column as "activity_id"


- Combine all TEST files into TEST DATA SET by columns (cbind) -> test_data_set
- Combine all TRAIN files into TEST DATA SET by columns (cbind)-> train_data_set

- Combine above 2 TEST (test_data_set) and TRAIN (train_data_set) data set into complete_data
                
                 
 
###Part 2. Extracts only the measurements on the mean and standard deviation for each measurement

- Find the column name based on the complete_data set where descript like "mean"
- Find the column name based on the complete_data set where descript like "std"
- Extract them and assign into new data set -> mean_std_data
                
                 
 
###Part 3. Uses descriptive activity names to name the activities in the data set
- Read the activity descript (activity_labels.txt) and name their column as "activity_id" and "activity_name" assign into -> activity_label
- Merge the activity_label and mean_std_data by "acitivty_id"
                
                 
 
###Part 4. Appropriately labels the data set with descriptive variable names
- Melt the variable columns in order to easily replace the variable description with gsub
- standardize the variable name like "mean" as "Mean" using gsub
- standardize the variable name like "std" as "Std" using gsub
- remove "()" which is not meaningful to the reader using gsub
- NOTE:We can add more substitution to replace other character/pattern but it is fine because I want the variable can trace back to the original variable name while new variable name still readable 
                
                 
 
###Part 5. Creates independent tidy data set with the average of each variable for each activity and each subject.

- Pass the function MEAN into 'dcast' to turn the long data set (from part 4) into wide format and this would make each subject has 1 row per 1 activity only and each row includes all the variable in columns with its average value 
                
                 
 
###Part 6. Additional requirement for the project is to output data set as a txt file created with write.table() using row.name=FALSE 

- write the final data set in part 5 into "tidy_wearable_activity_data.txt" file






