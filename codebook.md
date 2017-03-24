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
[49] "FreqencyBodyAccJerk-mean()-X" 
[50] "FreqencyBodyAccJerk-mean()-Y"  
[51] "FreqencyBodyAccJerk-mean()-Z"  
[52] "FreqencyBodyAccJerk-std()-X"  
[53] "FreqencyBodyAccJerk-std()-Y"   
[54] "FreqencyBodyAccJerk-std()-Z"   
[55] "FreqencyBodyGyro-mean()-X"   
[56] "FreqencyBodyGyro-mean()-Y"   
[57] "FreqencyBodyGyro-mean()-Z"     
[58] "FreqencyBodyGyro-std()-X"   
[59] "FreqencyBodyGyro-std()-Y"     
[60] "FreqencyBodyGyro-std()-Z"      
[61] "FreqencyBodyAccMag-mean()"   
[62] "FreqencyBodyAccMag-std()"      
[63] "FreqencyBodyAccJerkMag-mean()"
[64] "FreqencyBodyAccJerkMag-std()"
[65] "FreqencyBodyGyroMag-mean()"    
[66] "FreqencyBodyGyroMag-std()"     
[67] "FreqencyBodyGyroJerkMag-mean()"
[68] "FreqencyBodyGyroJerkMag-std()" 
