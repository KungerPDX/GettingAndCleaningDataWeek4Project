# Getting and Cleaning Data Course Project (Week 4)
Class project for week four of the Getting and Cleaning Data course, Johns Hopkins University/Coursera.

Kevin Unger, 29 Oct 2017

# Instructions
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

## Review criteria
1.  The submitted data set is tidy. 
2.  The Github repo contains the required scripts.
3.  GitHub contains a codebook that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4.  The `README.md` that explains the analysis files is clear and understandable.
5.  The work submitted for this project is the work of the student who submitted it.

## Purpose
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 
1.  a tidy data set as described below, 
2.  a link to a Github repository with your script for performing the analysis, and 
3.  a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called `CodeBook.md`. 
4.  a `README.md` file explaining how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

You should create one R script called run_analysis.R that does the following. 
1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names. 
5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Files

## UCI Human Activity Recognition (HAR) Files
Files extracted from the downloaded `UCI HAR Dataset.zip` file (in the repository root) are contained in the directory `\UCI HAR Dataset`.  A full description of these extracted files may be found in the contained `README.txt` file.  Here is a truncated list of the other files relevant to this project:

1.  `features_info.txt`, which shows information about the variables used on the feature vector,
2.  `features.txt`, which lists of all features,
3.  `activity_labels.txt`, which links the class labels with their activity name,
4.  `train/subject_train.txt`, which identifies the subject who performed the activity in the training partition,
5.  `train/X_train.txt`, which contains features for the training partition,
6.  `train/y_train.txt`, which contains the activity labels for the training partition,
7.  `test/subject_test.txt`, which identifies the subject who performed the activity in the test partition,
8.  `test/X_test.txt`, which contains the features for the test partition, and
9.  `test/y_test.txt`, which contains the activity labels for the test partition.

## Project Files
Files created for this project are in the repository root.  They are:

1.  `README.md`, this file,
2.  `run_analysis.R`, the R script that performs the analysis,
3.  `UCI HAR Dataset - Means by Activity and Subject.txt`, a text file version of the analysis output, and
4.  `CodeBook.md`, a code book describing variables in `UCI HAR Dataset - Means by Activity and Subject.txt`. 

# Data Flow and Transformations 
## Primary Implementation
The analysis is performed as follows, with additional detail in the actual code:

1.  The UCI HAR zip file is conditionally downloaded and unzipped,
2.  The extracted UCI files `activity_labels.txt` and `features.txt` are imported,
3.  The features to keep are identified (i.e., the mean and standard deviation measures),
4.  The feature names are cleaned up to adhere to course instructions (e.g., all lower case, no punctuation),
5.  The extracted UCI subject, activity, and feature data is imported for both the training and test partitions and then merged into a single combined table,
6.  The activity and subject variables in the combined table are converted into factors,
7.  The combined table is melted by activity and subject,
8.  The means of each kept feature are calculated from the melted data for each activity and subject combination, and
9.  The output is written to text file.

## Alternative Implementations
Two alternative implementations are fully specified in the `run_analysis.R` script but do not run (i.e., are commented out).  The rationale for considering these alternatives are enumerated in the script file as well but are not provided here as technically they are not a part of the formal submission.  These alternative implementations are:

1.  An alternative where meanFreq() measurements are kept in addition to the mean() and std() measurements, and
2.  An alternative where the output means are not calculated for each activity and subject combination but rather separately for each.


