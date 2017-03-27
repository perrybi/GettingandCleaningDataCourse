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
* Tidy dataset `tidyData` contains 180 x 68 elements! 
* Write tidy data to `tidyData.txt` 

## Variable names
x_train, y_train, subject_train, x_test, y_test, and subject_test contain the training and test dataset groupd into the features, activities and subjects files. The created merged files are named `xtot`, `ytot` and `subjtot` which merge the training and test datasets together as required.

Features now contain the correct names for the xtot dataset, and are applied to the column names of those extracting only the mean and standard deviation.

Activity names are also correctly transformed through the 'activity_name' variable. The created file `totData` combines xtot, ytot and subjtot in a giant final dataset.

Last but not least, `tidyData.txt` file contains the required averages of the columns extracting only the mean and std (as obtained in part 2). Obtaining the corresponding column names was done using the `data.table` package.

## Feature names
 [1] "subject"                       
 [2] "activity_name"                  
 [3] "TimeBodyAcc-mean()-X"          
 [4] "TimeBodyAcc-mean()-Y"           
 [5] "TimeBodyAcc-mean()-Z"           
 [6] "TimeBodyAcc-std()-X"           
 [7] "TimeBodyAcc-std()-Y"            
 [8] "TimeBodyAcc-std()-Z"            
 [9] "TimeGravityAcc-mean()-X"       
[10] "TimeGravityAcc-mean()-Y"        
[11] "TimeGravityAcc-mean()-Z"        
[12] "TimeGravityAcc-std()-X"        
[13] "TimeGravityAcc-std()-Y"         
[14] "TimeGravityAcc-std()-Z"         
[15] "TimeBodyAccJerk-mean()-X"      
[16] "TimeBodyAccJerk-mean()-Y"       
[17] "TimeBodyAccJerk-mean()-Z"      
[18] "TimeBodyAccJerk-std()-X"       
[19] "TimeBodyAccJerk-std()-Y"        
[20] "TimeBodyAccJerk-std()-Z"       
[21] "TimeBodyGyro-mean()-X"         
[22] "TimeBodyGyro-mean()-Y"         
[23] "TimeBodyGyro-mean()-Z"        
[24] "TimeBodyGyro-std()-X"          
[25] "TimeBodyGyro-std()-Y"          
[26] "TimeBodyGyro-std()-Z"           
[27] "TimeBodyGyroJerk-mean()-X"     
[28] "TimeBodyGyroJerk-mean()-Y"    
[29] "TimeBodyGyroJerk-mean()-Z"      
[30] "TimeBodyGyroJerk-std()-X"      
[31] "TimeBodyGyroJerk-std()-Y" 
[32] "TimeBodyGyroJerk-std()-Z"    
[33] "TimeBodyAccMag-mean()"         
[34] "TimeBodyAccMag-std()"   
[35] "TimeGravityAccMag-mean()"  
[36] "TimeGravityAccMag-std()"       
[37] "TimeBodyAccJerkMag-mean()"  
[38] "TimeBodyAccJerkMag-std()"      
[39] "TimeBodyGyroMag-mean()"        
[40] "TimeBodyGyroMag-std()"   
[41] "TimeBodyGyroJerkMag-mean()"    
[42] "TimeBodyGyroJerkMag-std()"     
[43] "FreqencyBodyAcc-mean()-X"    
[44] "FreqencyBodyAcc-mean()-Y"     
[45] "FreqencyBodyAcc-mean()-Z"      
[46] "FreqencyBodyAcc-std()-X"    
[47] "FreqencyBodyAcc-std()-Y"      
[48] "FreqencyBodyAcc-std()-Z"
[49] "FreqencyBodyAccJerk-mean()-X” 
[50] "FreqencyBodyAccJerk-mean()-Y”
[51] "FreqencyBodyAccJerk-mean()-Z"
[52] "FreqencyBodyAccJerk-std()-X"  
[53] "FreqencyBodyAccJerk-std()-Y"   
[54] "FreqencyBodyAccJerk-std()-Z"   
[55] "FreqencyBodyGyro-mean()-X"   
[56] "FreqencyBodyGyro-mean()-Y"   
[57] "FreqencyBodyGyro-mean()-Z"     
[58] "FreqencyBodyGyro-std()-X"
[59] "FreqencyBodyGyro-std()-Y”
[60] "FreqencyBodyGyro-std()-Z”
[61] "FreqencyBodyAccMag-mean()”
[62] "FreqencyBodyAccMag-std()”
[63] "FreqencyBodyAccJerkMag-mean()”
[64] "FreqencyBodyAccJerkMag-std()”
[65] "FreqencyBodyGyroMag-mean()”
[66] "FreqencyBodyGyroMag-std()”
[67] "FreqencyBodyGyroJerkMag-mean()”
[68] "FreqencyBodyGyroJerkMag-std()"
