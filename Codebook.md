# Download the dataset
Dataset downloaded and extracted UCR HAR Dataset.

# Assign all data
features - 561 obs, 2 variables
activity_label - 6 obs, 2 variables
## test data-sets
subject_test - 2947 obs, 1 variables
X_test - 2947 obs, 561 variables
Y_test - 2947 obs, 1 variables
## train data-sets
subject_train - 7352 obs, 1 variables
X_train - 7352 obs, 561 variables
Y_train - 2947 obs, 1 variables

# run_analysis.R script performs binding and merging data.
X_tidy train and test merge using rbind() function
Y_tidy train and test merge using rbind() function
subject train and test merge rbind() function
mergedata  is created by merging subject, Y_tidy and X_tidy using cbind() function

# Extracts only the measurements on the mean and standard deviation for each measurement
tidydata is created by subsetting mergedata, selecting only columns: subject, code and the measurements on the mean and standard deviation (std) for each measurement

# Uses descriptive activity names to name the activities in the data set
Entire numbers in code column of the tidydata replaced with corresponding activity taken from second column of the activities variable

# Appropriately labels the data set with descriptive variable names
code column in tidydata -> Activity
All Acc in column’s name replaced by Accelerometer
All Gyro in column’s name replaced by Gyroscope
All BodyBody in column’s name replaced by Body
All Mag in column’s name replaced by Magnitude
All start with character f in column’s name replaced by Frequency
All start with character t in column’s name replaced by Time
