## Set Working Directory - Change the path and execute it if required
# setwd("C:/Users/Kenny/Desktop/UCI HAR Dataset")

library(reshape2)


#######################################################################
## 1. Merges the training and the test sets to create one data set
#######################################################################

## Read feature file and get all features list
features <- read.table("features.txt")
feature_name <-  features[,2]

head(features)
head(feature_name)

length(feature_name) ##561



#### TEST DATA ####
## Read test data file and assign their columns label based on feature_name list
testdata <- read.table("./test/X_test.txt")
colnames(testdata) <- feature_name

head(testdata)


## Read the subject id for test data and label its column
testdata_subject_id <- read.table("./test/subject_test.txt")
colnames(testdata_subject_id) <- "subject_id"

head(testdata_subject_id)


## Read the activity id for test data and label its column
testdata_activity_id <- read.table("./test/y_test.txt")
colnames(testdata_activity_id) <- "activity_id"

head(testdata_activity_id)





#### TRAIN DATA ####
## Read training data file and assign their columns label based on feature_name list
traindata <- read.table("./train/X_train.txt")
colnames(traindata) <- feature_name




## Read the subject id for train data and label the its column
traindata_subject_id <- read.table("./train/subject_train.txt")
colnames(traindata_subject_id) <- "subject_id"






## Read the activity id for train data and label the its column
## the dataframe's columns
traindata_activity_id <- read.table("./train/y_train.txt")
colnames(traindata_activity_id) <- "activity_id"






#### Combine the 3 test data set into 1 data set by column
## which is test data's subject, activity and the test data 
test_data_set <- cbind(testdata_subject_id , testdata_activity_id , testdata)



#### Combine the 3 train data set into 1 data set by column
## which is train data's subject, activity and the test data 
train_data_set <- cbind(traindata_subject_id , traindata_activity_id , traindata)



## Combine the test data set and the train data set into one data set by row
complete_data <- rbind(train_data_set,test_data_set)

dim(complete_data)

#######################################################################
## 2. Extracts only the measurements on the mean and standard deviation
##    for each measurement. 
#######################################################################


## extract "mean" name by index
mean_col_index <- grep("mean",names(complete_data),ignore.case=TRUE)
mean_col_name <- names(complete_data)[mean_col_index]


## extract "std" name by index
std_col_index <- grep("std",names(complete_data),ignore.case=TRUE)
std_col_name <- names(complete_data)[std_col_index]


mean_std_data <-complete_data[,c("subject_id","activity_id",mean_col_name,std_col_name)]



dim(complete_data) ##10299   563

# Reduce 563 variable to 88 variable which includes mean or std variable only
dim(mean_std_data) ##10299    88 




##############################################################################
## 3. Uses descriptive activity names to name the activities in the data set
##############################################################################

## Read activity type file and label its columns as "activity_id" "activity_name"
activity_label <- read.table("./activity_labels.txt",col.names=c("activity_id","activity_name"))
head(activity_label)


## merge the activity label into mean_std_data based on activity_id in both data set
desc_data <- merge(activity_label,mean_std_data,by.x="activity_id",by.y="activity_id",all=TRUE)


# added 1 column which is the descriptive acitivity name
dim(mean_std_data) ##10299    88 
dim(desc_data)     ##10299    89

head(desc_data)


#########################################################################
## 4. Appropriately labels the data set with descriptive variable names
#########################################################################

## melt the data based on activity id, activity name and subject
melt_data <- melt(desc_data,id=c("activity_id","activity_name","subject_id"))

## replace the variable with better description name
melt_data$variable <- gsub("mean","Mean",melt_data$variable)
melt_data$variable <- gsub("std","Std",melt_data$variable)
melt_data$variable <- gsub("\\(\\)","",melt_data$variable)


# better name
unique(melt_data$variable)



################################################################################
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.
################################################################################

# dcast the mean(average) for each subject and acitivy pair
mean_data <- dcast(melt_data,activity_id + activity_name + subject_id ~ variable,mean)


## compare the first complete data set with the mean_data set
# subject 1 with acitvity type 1 in complete data set has 563 records
length(complete_data[complete_data$activity_id==1 & complete_data$subject_id==1,]) 

# subject 1 with acitvity type 1 in mean data set has 89 records
length(mean_data[mean_data$activity_id==1 & mean_data$subject_id==1,])


head(mean_data)


################################################################################
## Assignment submission requirement
## Please upload the tidy data set created in step 5 of the instructions. 
## Please upload your data set as a txt file created with write.table() 
## using row.name=FALSE 
################################################################################

## output the file
write.table(mean_data,row.names = FALSE,"./tidy_wearable_activity_data.txt")

print("Execution Completed")
