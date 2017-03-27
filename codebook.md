# Codebook 
Produced on Thu Mar 23 21:48:07 2017 
## Overview
In addition to the readme file which included a description summary, more information about the data, variables and transformations used in the course project could be found in this codebook.md file.

## Source file
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Works performed on the data: 
* Downloading the file from the URL 
* Unzipping the file to the following directory: C:/Users/user/Desktop/Coursera/JHU Data Science/Getting and Clearning data/Course Project/UCI HAR Dataset 
* Reading subject, features and activity files 
* Merging all training and test files into together forming `subjtot`, `xtot`, `ytot` and `totData` (all combined) 
* Total dataset x contains 10299 x 561 elements! 
* Total subjects contains 10299 x 1 elements! 
* Total dataset y contains 10299 x 1 elements! 
* Total dataset contains 10299 x 563 elements! 
* Getting only mean and std measurements 
* Subsetted dataset xcontains 10299 x 66 elements! 
* Made descriptive activity names: activity number activity name 
* Merged `acitivity_labels.txt` with the corresponding `activity_name`, updating the data 
* Label the data set properly 
* Total combined dataset `totData` contains 10299 x 68 elements! 
* Tidy dataset with the average of each variable for each activity and subject 
* Tidy dataset `tidyData` contains 35 x 68 elements! 
* Write tidy data to `tidyData.txt` 

## Variable names
x_train, y_train, subject_train, x_test, y_test, and subject_test contain the training and test dataset groupd into the features, activities and subjects files. The created merged files are named `xtot`, `ytot` and `subjtot` which merge the training and test datasets together as required.

Features now contain the correct names for the xtot dataset, and are applied to the column names of those extracting only the mean and standard deviation.

Activity names are also correctly transformed through the 'activity_name' variable. The created file `totData` combines xtot, ytot and subjtot in a giant final dataset.

Last but not least, `tidyData.txt` file contains the required averages of the columns extracting only the mean and std (as obtained in part 2). Obtaining the corresponding column names was done using the `data.table` package.

