

#STEP TO RUN run_analysis.R SCRIPT
1. Download the data as per assignment required from following URL.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Unzip the downloaded file.

3. Download the run_analysis.R script from following URL.                
   https://github.com/dyyee/Getting_and_Cleaning_Data_Project/archive/master.zip


4. Unzip and Move run_analysis.R script to the above unzipped 'UCI HAR Dataset' folder (in Step 2).                
   Note: The run_analysis.R should be same level with activity_labels.txt, features.txt and features_info.txt files
  

5. Install reshape2 package by executing following code
	```
	install.packages("reshape2") 
    ```
   This is because this script required function in reshape2 library to execute the code.                
   If you have installed reshape2 package, you can skip this step.

6. Set the working directory the above unzipped directory.                
   Example,
```setwd("C:/Users/Kenny/Desktop/UCI HAR Dataset")```
   
7. Open and execute run_analysis.R script in RStudio.

8. Upon the code executed, you shall see "Execution Completed" in the console

9. The tidy_wearable_activity_data.txt file is created in the working directory folder.


*****


#Procedure of run_analysis.R SCRIPT

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








