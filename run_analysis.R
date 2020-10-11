# merge X's test and train data-set
X_tidy <- rbind(X_train, X_test)

# merge Y's test and train data-set
Y_tidy <- rbind(Y_train, Y_test)

# merge subject's test and train data-set
subject <- rbind(subject_train, subject_test)

# merge ALL
mergedata <- cbind(subject, Y_tidy, X_tidy)

# Extracts only the measurements on the mean and standard deviation for each measurement
tidydata <- mergedata %>% select(subject, code, contains("mean"), contains("std"))

# Uses descriptive activity names to name the activities in the data set
tidydata$code <- activity_label[tidydata$code, 2]

# Appropriately labels the data set with descriptive variable names
names(tidydata)[2] = "Activity"
names(tidydata)<-gsub("Acc", "Accelerometer", names(tidydata))
names(tidydata)<-gsub("Gyro", "Gyroscope", names(tidydata))
names(tidydata)<-gsub("BodyBody", "Body", names(tidydata))
names(tidydata)<-gsub("Mag", "Magnitude", names(tidydata))
names(tidydata)<-gsub("^t", "Time", names(tidydata))
names(tidydata)<-gsub("^f", "Frequency", names(tidydata))
names(tidydata)<-gsub("tBody", "TimeBody", names(tidydata))
names(tidydata)<-gsub("-mean()", "Mean", names(tidydata), ignore.case = TRUE)
names(tidydata)<-gsub("-std()", "STD", names(tidydata), ignore.case = TRUE)
names(tidydata)<-gsub("-freq()", "Frequency", names(tidydata), ignore.case = TRUE)
names(tidydata)<-gsub("angle", "Angle", names(tidydata))
names(tidydata)<-gsub("gravity", "Gravity", names(tidydata))

# creates a second, independent tidy data set with the average of each variable
secTidydata <- tidydata %>% 
        group_by(subject, Activity) %>%
        summarise_all(funs(mean))
write.table(secTidydata, "secTidyData.txt", row.names = FALSE)

# credit to Nunno Nughoro and jcombori for the help on conjuring and learning this