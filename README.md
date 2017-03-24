# Course project for getting and clearning data 
## Procedure to run the scripts and produce the results 
* `setwd()` to the proper directory with `run_analysis.R` file 
* Run the `run_analysis.R` file, which creates the codebook markdown file 
* `setwd()` to the proper directory with `run_analysis.R` file 
* Outputs are: `tidyData.txt` and `codebook.md` files 
## Procedures performed in the script are as follows:
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
