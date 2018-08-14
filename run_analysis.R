library (reshape2)  # load the reshape2 package
# 1. Merge the training and the test sets to create one data set.

## step 1: download zip file from website
if(!file.exists("./data")) dir.create("./data")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/getdata_UCI HAR Dataset.zip")

## step 2: unzip dataset
if(!file.exists("./data/UCI HAR Dataset"))
  unzip("./data/getdata_UCI HAR Dataset.zip", exdir = "./data")

## step 3: Load data into R
# Read training tables:
setTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
labelsTrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subjectTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Read testing tables
setTest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
labelsTest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subjectTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Reading feature vector and activity labels:
features <- read.table('./data/UCI HAR Dataset/features.txt')
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

## step 4: Merge both training and test sets

# Concatenate data tables by row corresponding to subject, label and dataFeatures 

subject <- rbind(subjectTrain, subjectTest)
label <- rbind(labelsTrain, labelsTest)
dataFeatures <- rbind(setTrain, setTest)

# Assign column names:
colnames(dataFeatures) <- features[,2] 
colnames(label) <-"label"
colnames(subject) <- "subject"

# Merge all data by columns
allData <- cbind(subject, label, dataFeatures)

# 2. Extract only the measurements on the mean and standard deviation for each measurement. 

## step 1: Extract the column indices that have either mean or std in them.
meanStdIndex <- grep("mean|std", names(allData), ignore.case = TRUE)

## step 2: Add label and subject columns to the list
requiredColumns <- c(1,2, meanStdIndex)

## step 3: Create extractedData with the selected columns in requiredColumns.  
extractedData <- allData[, requiredColumns]

# 3. Uses descriptive activity names to name the activities in the data set

## replace activity label with named factor levels.  Replace labels 1 to 6 with activity names
extractedData$label <- factor(extractedData$label, levels = activityLabels[, 1], labels = activityLabels[, 2])

# 4. Appropriately labels the data set with descriptive variable names.

## expand abbreviations and clean up names
names(extractedData) <- gsub("Acc", "Accelerometer", names(extractedData))
names(extractedData) <- gsub("Gyro", "Gyroscope", names(extractedData))
names(extractedData) <- gsub("^t", "Time", names(extractedData))
names(extractedData) <- gsub("Mag", "Magnitude", names(extractedData))
names(extractedData) <- gsub("^f", "Frequency", names(extractedData))
names(extractedData) <- gsub("-mean", "Mean", names(extractedData), ignore.case = TRUE)
names(extractedData) <- gsub("-std", "STD", names(extractedData), ignore.case = TRUE)
names(extractedData) <- gsub("BodyBody", "Body", names(extractedData))
names(extractedData) <- gsub("angle", "Angle", names(extractedData))
names(extractedData) <- gsub("gravity", "Gravity", names(extractedData))
names(extractedData) <- gsub("tBody", "TimeBody", names(extractedData))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject.

extractedDataMelt <- melt(extractedData, id = c("subject", "label"))
secTidyDataSet <- dcast(extractedDataMelt, subject + label ~ variable, mean)

## write second tidy data set in txt file
write.table(secTidyDataSet, "./secTidyDataSet.txt", row.name=FALSE)