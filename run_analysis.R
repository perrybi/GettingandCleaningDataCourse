#### Getting and Cleaning data Course Project ####

require("data.table")

gen_readme <- function(...){
  cat(..., "\n", file = "./README.md", sep = " ", append = T)
}

gen_readme("# Course project for getting and clearning data")

gen_readme("## Procedure to run the scripts and produce the results")
gen_readme("* `setwd()` to the proper directory with `run_analysis.R` file")
gen_readme("* Run the `run_analysis.R` file, which creates the codebook markdown file")
gen_readme("* `setwd()` to the proper directory with `run_analysis.R` file")
gen_readme("* Outputs are: `tidyData.txt` and `codebook.md` files")

# function to generate codebook:
# using concatenate function to outputs the objects and representations
gen_codebook <- function(...){
  cat(..., "\n", file = "./codebook.md", sep = " ", append = T)
}

# download the data:
gen_codebook("# Codebook")
gen_codebook("Produced on", as.character(date()))

gen_codebook("## Works performed on the data:")
gen_codebook("* Downloading the file from the URL")
myurl <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(myurl, "./Data.zip")
dirc <- file.path(getwd(), "UCI HAR Dataset")
gen_codebook("* Unzipping the file to the following directory:", dirc)
unzip("./Data.zip")

gen_codebook("* Reading subject, features and activity files")
# read the training data, dim => 7352  128
# ignoring Inertial Signals folder
subjtr <- read.table(file.path(dirc, "train/subject_train.txt"), header = FALSE)
xtr <- read.table(file.path(dirc, "train/X_train.txt"), header = FALSE)
ytr <- read.table(file.path(dirc, "train/y_train.txt"), header = FALSE)

# read the test data, dim => 2947  128
# ignoring Inertial Signals folder
subjts <- read.table(file.path(dirc, "test/subject_test.txt"), header = FALSE)
xts <- read.table(file.path(dirc, "test/X_test.txt"), header = FALSE)
yts <- read.table(file.path(dirc, "test/y_test.txt"), header = FALSE)

# read features names:
features_names <- read.table(file.path(dirc, "/features.txt"), header = FALSE)

# merging subject files:
subjtot <- rbind(subjtr, subjts)
names(subjtot) = "subject"

# merging feature files
xtot <- rbind(xtr, xts)
names(xtot) = features_names[, 2]

# merging label files
ytot <- rbind(ytr, yts)
names(ytot) = "activity_number"

# merging all total files together, with the following order: subject, feature, label
gen_codebook("* Merging all training and test files into together forming `subjtot`, `xtot`, `ytot` and `totData` (all combined)")
suy <- cbind(subjtot, ytot)
totData <- cbind(suy, xtot)
gen_codebook("* Total dataset x contains", as.character(nrow(xtot)), "x", as.character(ncol(xtot)), "elements!")
gen_codebook("* Total subjects contains", as.character(nrow(subjtot)), "x", as.character(ncol(subjtot)), "elements!")
gen_codebook("* Total dataset y contains", as.character(nrow(ytot)), "x", as.character(ncol(ytot)), "elements!")
gen_codebook("* Total dataset contains", as.character(nrow(totData)), "x", as.character(ncol(totData)), "elements!")

### Part 2:
# looking for mean() and std(), we need two "/" to scape / and paranthesis
ind_msd <- grep("mean\\(\\)|std\\(\\)", features_names[, 2])
xtot <- xtot[, ind_msd]
gen_codebook("* Getting only mean and std measurements")
gen_codebook("* Subsetted dataset xcontains", as.character(nrow(xtot)), "x", as.character(ncol(xtot)), "elements!")

### Part 3:
# Use descriptive activity names to name the activities in the data set
gen_codebook("* Made descriptive activity names:", c("activity number", "activity name"))
actData <- read.table(file.path(dirc, "activity_labels.txt"), header = FALSE)
names(actData) <- c("activity_number", "activity_name")

gen_codebook("* Merged `acitivity_labels.txt` with the corresponding `activity_name`, updating the data")
ytot <- merge(ytot, actData, by = "activity_number")

### Part 4: 
# Appropriately label the data set with descriptive variable names
gen_codebook("* Label the data set properly")
suy <- cbind(subjtot, ytot$activity_name)
names(suy)[2] = "activity_name"
totData <- cbind(suy, xtot)
names(totData) <- sub("BodyBody", "Body", names(totData))
names(totData) <- sub("^t", "time", names(totData))
names(totData) <- sub("^f", "freqency", names(totData))
gen_codebook("* Total combined dataset `totData` contains", as.character(nrow(totData)), "x", as.character(ncol(totData)), "elements!")

### Part 5:
# From the data set in step 4, create a second, independent tidy data set with the average of 
# each variable for each activity and each subject.
gen_codebook("* Tidy dataset with the average of each variable for each activity and subject")
totData <- data.table(totData)
tidyData <- totData[, lapply(.SD, mean), by = "subject,activity_name"] 
tidyData <- tidyData[order(subject)]
#tidyData <- ddply(totData, .(subject, activity_name), function(x) colMeans(x[, 3:68]))
gen_codebook("* Tidy dataset `tidyData` contains", as.character(nrow(tidyData)), "x" , as.character(ncol(tidyData)), "elements!")
gen_codebook("* Write tidy data to `tidyData.txt`")
write.table(tidyData, file = "tidyData.txt", row.name=FALSE)
