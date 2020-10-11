# features and activity label data-sets
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("no", "functions"))
activity_label <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

# test data-sets
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names = "code")

# train data-sets
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names = "code")