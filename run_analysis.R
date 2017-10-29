
################################################################################################
#
#  Getting and Cleaning Data
#  Week 4 Project
#  Johns Hopkins University via Coursera, 
#  Jeffrey Leek, instructor
# 
#  Kevin Unger
#  29 Oct 2017
#  
#  Purpose:  Calculates summary descriptive statistics based on the UCI Human Activity 
#            Recognition (HAR) using Smartphones data set and writes those statistics to a file.
#
#  For further information:
#      See README.md for a full description of the project requirements, files, data
#      flow/transformations, and references
#
#      See CodeBook.md for a full description of the data sets and variables
#
################################################################################################
    


library(reshape2)

##  Conditionally download the zip file of the UCI HAR data, code books, and readme file
if (!file.exists("UCI HAR Dataset.zip")) {
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(url = fileUrl, destfile = "UCI HAR Dataset.zip")        
}

##  Conditionally unzip the zip file
if (!file.exists("./UCI HAR Dataset")) { unzip(zipfile = "UCI HAR Dataset.zip") }

##  Create activity and feature tables
activities <- read.table(file = "UCI HAR Dataset/activity_labels.txt", col.names = c("activityid", "activity"))
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("featureid", "feature"))

##  Find the features related to means and standard deviations

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# 
#  ALTERNATIVE IMPLEMENTATION OPTION
# 
#  The requirements specify the extraction of, "Only the measurements on the mean and standard
#  deviation."  Applying a strict interpretation, the meanFreq() variables should NOT be
#  extracted.  If a looser interpretation was desired, however, the featuresKeep assignment that
#  follows could be replaced by the one below that retrieves the meanFreq() measurements 
#  in addition to the mean and std (by removing the open parenthesis literal in the pattern):
# 
#      featuresKeep <- grep(".*mean.*|.*std.*", features$feature)
#
#  Additionally add the following in the "Make feature names friendlier" section, somewhere
#  after gsub that handles -mean:
#
#      features$feature <- gsub(pattern = "Freq", replacement = "Frequency", x = features$feature)
# 
#  Note that if this approach were to be taken, the readme file and code book would need to be 
#  updated to explain the meaning of the meanFreq variables.
#
#  Extracting the means and stds extracts sixty-six features.
#  Extracting the means, stds, and meanFreqs would extracts seventy-nine features.
# 
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

featuresKeep <- grep(".*mean\\(.*|.*std.*", features$feature)

##  Make the feature names more descriptive
features$feature <- gsub(pattern = "^t", replacement = "TimeSeries_", x = features$feature)
features$feature <- gsub(pattern = "^f", replacement = "FourierSeries_", x = features$feature)
features$feature <- gsub(pattern = "-X", replacement = "_XDimension", x = features$feature)
features$feature <- gsub(pattern = "-Y", replacement = "_YDimension", x = features$feature)
features$feature <- gsub(pattern = "-Z", replacement = "_ZDimension", x = features$feature)
features$feature <- gsub(pattern = "\\(\\)", replacement = "", x = features$feature)
features$feature <- gsub(pattern = "-mean", replacement = "_Mean", x = features $feature)
features$feature <- gsub(pattern = "-std", replacement = "_StandardDeviation", x = features$feature)
features$feature <- gsub(pattern = "Acc", replacement = "Acceleration", x = features$feature)
features$feature <- gsub(pattern = "Gyro", replacement = "AngularVelocity", x = features$feature)
features$feature <- gsub(pattern = "Mag", replacement = "Magnitude", x = features$feature)

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# 
#  ALTERNATIVE IMPLEMENTATION OPTION
# 
#  Class instruction states that variable names should be all lower case and without any sort of
#  separator like an underscore.  In the coder's opinion, however, using these formatting
#  principles in this particular case significantly reduces readability due to the large number 
#  of elements begin encoded therein (the series type, body v gravity, acceleration v angular 
#  velocity, the aggregate function name, the xyz dimension, etc.).  The instructor-suggested
#  approach is the one that has been taken, however.
#
#  Alternatively remove the following two lines of code to retain the camelback/underscore 
#  notation used up until now.
#
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

features$feature <- gsub(pattern = "_", replacement = "", x = features$feature)
features$feature <- tolower(features$feature)

##  Import all the training activity and subject data along with the limited set of feature data,
##  rename the columns of the kept feature data, then bind all three into a single table
trainActivities <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activity")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
trainFeatures <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresKeep]
colnames(trainFeatures) <- features$feature[featuresKeep]
trainData <- cbind(trainSubjects, trainActivities, trainFeatures)

##  Proceed similarly for the test data
testActivities <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activity")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
testFeatures <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresKeep]
colnames(testFeatures) <- features$feature[featuresKeep]
testData <- cbind(testSubjects, testActivities, testFeatures)

##  Rowbind/union the training and test data together
allData <- rbind(trainData, testData)

##  Convert the subject and activity variables to factors
allData$subject <- as.factor(allData$subject) 
allData$activity <- factor(allData$activity, levels = activities$activityid, labels = activities$activity) 

##  Create a new, tidy data set with the feature averages for each activity and subject
allDataMelted <- melt(allData, id = c("activity", "subject"))

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# 
#  ALTERNATIVE IMPLEMENTATION OPTION
# 
#  There is a little ambiguity in the requirements here, which state, "Create a second, 
#  independent tidy data set with the average of each variable for each activity and each 
#  subject."  This is taken to mean create one data set with averages for each COMBINATION of 
#  activity and subject, and not to create a single data set where activity and subject averages
#  are calculated SEPARATELY.  The former interpretation could be implemented, however, by 
#  replacing the single allDataMeltedMeans assignment line that follows with the code block below.  
#  A bit of abstraction would be required here to adhere to part of the requirements that a 
#  single data set should be produced while also adhering to the tidy data principle that one 
#  column should represent one thing.  Two new variables would be used to accomplish this:  
#  groupingtype (which would take on the values "activity" or "subject") and groupingname (which
#  would hold either the activity name or subject name, as the case may be).
#   
#      ##  Get the averages for the activities, add in the grouping type, and change "activity" to "groupingname"
#      allDataMeltedActivityMeans <- dcast(allDataMelted, activity ~ variable, mean)
#      allDataMeltedActivityMeans <- cbind(groupingtype="activity", allDataMeltedActivityMeans)
#      colnames(allDataMeltedActivityMeans)[which(colnames(allDataMeltedActivityMeans)=="activity")] <- "groupingname"
#    
#      ## Proceed similarly for the subjects
#      allDataMeltedSubjectMeans <- dcast(allDataMelted, subject ~ variable, mean)
#      allDataMeltedSubjectMeans <- cbind(groupingtype="subject", allDataMeltedSubjectMeans)
#      colnames(allDataMeltedSubjectMeans)[which(colnames(allDataMeltedSubjectMeans)=="subject")] <- "groupingname"
#    
#      ## Union the two data sets to make a single output set
#      allDataMeltedMeans <- rbind(allDataMeltedActivityMeans, allDataMeltedSubjectMeans)
#    
#  Note that if the alternative approach were to be taken, the readme and code book files  would 
#  need to be updated to explain these new groupingtype and groupingname variables.
# 
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

allDataMeltedMeans <- dcast(allDataMelted, activity + subject ~ variable, mean) 

# Write the means analysis to a text file 
write.table(allDataMeltedMeans, "UCI HAR Dataset - Means by Activity and Subject.txt", row.names=FALSE) 

