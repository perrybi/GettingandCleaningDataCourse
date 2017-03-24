# Codebook 
Produced on Thu Mar 23 21:48:07 2017 
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

* names(tidyData)
 [1] "subject"                        "activity_name"                  "TimeBodyAcc-mean()-X"          
 [4] "TimeBodyAcc-mean()-Y"           "TimeBodyAcc-mean()-Z"           "TimeBodyAcc-std()-X"           
 [7] "TimeBodyAcc-std()-Y"            "TimeBodyAcc-std()-Z"            "TimeGravityAcc-mean()-X"       
[10] "TimeGravityAcc-mean()-Y"        "TimeGravityAcc-mean()-Z"        "TimeGravityAcc-std()-X"        
[13] "TimeGravityAcc-std()-Y"         "TimeGravityAcc-std()-Z"         "TimeBodyAccJerk-mean()-X"      
[16] "TimeBodyAccJerk-mean()-Y"       "TimeBodyAccJerk-mean()-Z"       "TimeBodyAccJerk-std()-X"       
[19] "TimeBodyAccJerk-std()-Y"        "TimeBodyAccJerk-std()-Z"        "TimeBodyGyro-mean()-X"         
[22] "TimeBodyGyro-mean()-Y"          "TimeBodyGyro-mean()-Z"          "TimeBodyGyro-std()-X"          
[25] "TimeBodyGyro-std()-Y"           "TimeBodyGyro-std()-Z"           "TimeBodyGyroJerk-mean()-X"     
[28] "TimeBodyGyroJerk-mean()-Y"      "TimeBodyGyroJerk-mean()-Z"      "TimeBodyGyroJerk-std()-X"      
[31] "TimeBodyGyroJerk-std()-Y"       "TimeBodyGyroJerk-std()-Z"       "TimeBodyAccMag-mean()"         
[34] "TimeBodyAccMag-std()"           "TimeGravityAccMag-mean()"       "TimeGravityAccMag-std()"       
[37] "TimeBodyAccJerkMag-mean()"      "TimeBodyAccJerkMag-std()"       "TimeBodyGyroMag-mean()"        
[40] "TimeBodyGyroMag-std()"          "TimeBodyGyroJerkMag-mean()"     "TimeBodyGyroJerkMag-std()"     
[43] "FreqencyBodyAcc-mean()-X"       "FreqencyBodyAcc-mean()-Y"       "FreqencyBodyAcc-mean()-Z"      
[46] "FreqencyBodyAcc-std()-X"        "FreqencyBodyAcc-std()-Y"        "FreqencyBodyAcc-std()-Z"       
[49] "FreqencyBodyAccJerk-mean()-X"   "FreqencyBodyAccJerk-mean()-Y"   "FreqencyBodyAccJerk-mean()-Z"  
[52] "FreqencyBodyAccJerk-std()-X"    "FreqencyBodyAccJerk-std()-Y"    "FreqencyBodyAccJerk-std()-Z"   
[55] "FreqencyBodyGyro-mean()-X"      "FreqencyBodyGyro-mean()-Y"      "FreqencyBodyGyro-mean()-Z"     
[58] "FreqencyBodyGyro-std()-X"       "FreqencyBodyGyro-std()-Y"       "FreqencyBodyGyro-std()-Z"      
[61] "FreqencyBodyAccMag-mean()"      "FreqencyBodyAccMag-std()"       "FreqencyBodyAccJerkMag-mean()" 
[64] "FreqencyBodyAccJerkMag-std()"   "FreqencyBodyGyroMag-mean()"     "FreqencyBodyGyroMag-std()"     
[67] "FreqencyBodyGyroJerkMag-mean()" "FreqencyBodyGyroJerkMag-std()" 
