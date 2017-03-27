# Course project for getting and clearning data 
## Motivation
The purpose of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 
The source data is found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Project Summary
The following list is the description summary of the project
* The run_analysis.R script does the following tasks as required:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Summary of the required steps
* `setwd()` to the proper directory with `run_analysis.R` file 
* Run the `run_analysis.R` file, which creates the codebook markdown file 
* `setwd()` to the proper directory with `run_analysis.R` file 
* Outputs are: `tidyData.txt` and `codebook.md` files 

