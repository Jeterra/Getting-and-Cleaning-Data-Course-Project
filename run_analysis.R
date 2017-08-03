# run_analysis.R - Script for Coursera Getting and Cleaning Data Course Project 

# 1. Downloadind and Unzipping dataset
#Create data directory if it doesn't exists
if(!file.exists("./data")){dir.create("./data")}

#Download dataset into ./data directory
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# Unzip dataSet to ./data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

# 2. Reading tables
# Read trainings tables
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Read testing tables
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Read feature vector
features <- read.table('./data/UCI HAR Dataset/features.txt')

# Read activity labels
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

# naming column names
        
colnames(x_train) <- features[,2] 
colnames(y_train) <-"activityId"
colnames(subject_train) <- "subjectId"

colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

#3. Merging data
#Merging all data in one
        
merge_train <- cbind(y_train, subject_train, x_train)
merge_test <- cbind(y_test, subject_test, x_test)
AllData <- rbind(merge_train, merge_test)

#Extracting only the measurements on the mean and standard deviation for each measurement
#Read column names
        
colNames <- colnames(AllData)

#Create vector for defining ID, mean and standard deviation
        
mean_std <- (grepl("activityId" , colNames) | grepl("subjectId" , colNames) | 
             grepl("mean.." , colNames) | grepl("std.." , colNames))

#Extract subset that interests from AllData
        
OnlyMeanStd <- AllData[ , mean_std == TRUE]

# Putting description of activity names in data set 
        
OnlyMeanStdActNames <- merge(OnlyMeanStd, activityLabels,by='activityId',all.x=TRUE)

#Creating a second, independent tidy data set with the average of each variable 
# for each activity and each subject
#Making second tidy data set

#4. Making 2nd data
Tidy2 <- aggregate(. ~subjectId + activityId + activityType, OnlyMeanStdActNames, mean)
Tidy2 <- Tidy2[order(Tidy2$subjectId, Tidy2$activityId),]

#Writing second tidy data set in txt file

write.table(Tidy2, "Tidy.txt", row.names=FALSE, quote=FALSE)
